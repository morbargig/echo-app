def email = "morbargig"
def repo = "https://github.com/morbargig/echo-app"
def branch = "${BRANCH_NAME}"

pipeline {
    agent any
    stages {
        stage('pull') {
            steps {
                script {
                    if ( !["dev","master","stg"].contains("${branch}")) {
                        echo "${branch}"
                        echo "not knowed branch"
                    }
                    commit=sh (script: "git log -1 | tail -1", returnStdout: true).trim()
                }  
            }
        }          

        stage('build') { 
            steps {
                script{
                    tag="${branch}-${commit}"
                    if ( "${branch}" == "master" ){
                        tag="${commit}"
                    }
                    sh " docker build -t ${tag} ." 
                }
            }
        }
        
        stage('deply') {
            steps { 
                script{   
                    withCredentials([usernamePassword( credentialsId: 'docker-hub-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        echo "${USERNAME}  ${PASSWORD}"
                        sh "docker login -u ${USERNAME} -p ${PASSWORD}"
                        sh " docker tag ${tag} morbargig/echo-app:${tag}"
                        sh " docker push morbargig/echo-app:${tag}"
                    }
                }
            }
        }
    }
    post {
        success{     
            script{           
                    // mail me success
                    mail to: "morbargi@gamil.com"
                    subject: "${env.JOB_NAME} - (${env.BUILD_NUMBER}) Successfuly",
                    body: "APP building SUCCESSFUL!, see console output at ${env.BUILD_URL} to view the results"
            }                
        }
        failure{  
            script{   
                // mail me failure
                mail to: "{email}"
                subject: "${env.JOB_NAME} - (${env.BUILD_NUMBER}) FAILED",
                body: "APP building FAIL!, Check console output at ${env.BUILD_URL} to view the results"
            }
        }
    } 
}
