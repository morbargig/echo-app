def email = "morbargig"
def repo = "https://github.com/morbargig/echo-app"


pipeline {

    agent any
    // tools {
    // terraform 'terraform'
    // }
    

    stages {
        stage('pull') {
            steps {
                // git 'https://github.com/jenkinsci/git-plugin'
                // script {
                //     commit=sh (script: "git log -1 | tail -1", returnStdout: true).trim()
                // }  
                // echo "${commit} ${email} ${BRANCH_NAME}" 
                // sh "git clone https://github.com/morbargig/echo-app"
                // sh 'printenv'
            }
        }          
      

        // stage('build') { 
        //     steps {
        //         script{
        //             dir('dev'){    
        //                 sh "docker build -t dev-${GIT_COMMIT_HASH} ." 
        //             }
        //             dir('master'){    
        //                 sh "docker build -t 1.0.${JENKINS_BUILD_NUMBER}  ." 
        //             }
        //             dir('staging'){    
        //                 sh "docker build -t 'staging-${GIT_COMMIT_HASH}'  ." 
        //             }
            
        //         }
        //     }
        // }

        // stage('deply') {
            
        //     steps { 
        //          dir('app'){
        //             script{   
        //                 docker.withRegistry( '', registryCredential ){
        //                 sh "docker tag dev-${GIT_COMMIT_HASH} gangoll/dev-${GIT_COMMIT_HASH} && docker push gangoll/dev-${GIT_COMMIT_HASH}"
        //                 sh "docker tag 1.0.${env.JENKINS_BUILD_NUMBER} gangoll/1.0.${env.JENKINS_BUILD_NUMBER} && docker push gangoll/1.0.${env.JENKINS_BUILD_NUMBER}"
        //                 sh "docker tag staging-${GIT_COMMIT_HASH} gangoll/staging-${GIT_COMMIT_HASH} && docker push gangoll/staging-${GIT_COMMIT_HASH}"}
        //              }
        //          }
        //      }
        // }
        
        // post {
        //     always{
        //         echo 'push new docker image'
        //     }

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
