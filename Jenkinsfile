def email = "morbargig"
def repo = "https://github.com/morbargig/echo-app"
def branch = "${BRANCH_NAME}"


pipeline {


    agent any

    // tools {
    // terraform 'terraform'
    // }
    

    stages {
        stage('pull') {
            steps {


                script {
                    def exit = true
                    if ( !["dev","master",'stg'].contains("${branch}")) {
                        currentBuild.result = 'UNSTABLE'
                        return
                    }
                    commit=sh (script: "git log -1 | tail -1", returnStdout: true).trim()
                }  
                sh "mkdir ${branch}"
                // return
            }
        }          
      

        stage('build') { 
            steps {
                script{
                    dir("${branch}"){    
                        // sh "docker build -t ${branch}-${commit} ." 
                        echo "ok"
                    }
            
                }
            }
        }

        // stage('deply') {
        //     steps { 
        //          dir('app'){
        //             script{   
        //                 docker.withRegistry( '', registryCredential ){
        //                 sh "docker tag ${brach}-${commit} morbargig/echo-app:${brach}-${commit}"
        //                 sh "docker push morbargig/echo-app:${brach}-${commit}"
        //              }
        //          }
        //      }
        // }
        
        post {
            always{
                sh rm -rf "${brach}"
            }

        //     success{     
        //         script{           
        //                 // mail $team good worked
        //                 mail to: "morbargi@gamil.com"
        //                 subject: "${env.JOB_NAME} - (${env.BUILD_NUMBER}) Successfuly",
        //                 body: "APP building SUCCESSFUL!, see console output at ${env.BUILD_URL} to view the results"
                    
        //         }                
        //     }
        //     failure{  
        //         script{   
        //             mail to: "{email}"
        //             subject: "${env.JOB_NAME} - (${env.BUILD_NUMBER}) FAILED",
        //             body: "APP building FAIL!, Check console output at ${env.BUILD_URL} to view the results"
        //         }
        //     }
        // } 
    }
}
