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


                script {
                    def branch = "${BRANCH_NAME}"
                    def exit = true
                    if ( "${branch}" == "master" ) { 
                        currentBuild.result = 'UNSTABLE'
                        return
                    }
                    commit=sh (script: "git log -1 | tail -1", returnStdout: true).trim()
                }  
                // echo 
                // sh "mkdir ${branch}"
                // return
            }
        }          
      

        // stage('build') { 
        //     steps {
        //         script{
        //             dir(${branch}){    
        //                 sh "docker build -t ${branch}-${commit} ." 
        //             }
            
        //         }
        //     }
        // }

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
