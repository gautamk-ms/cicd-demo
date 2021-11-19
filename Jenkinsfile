pipeline{

    agent any
    
    tools { 
        maven 'Maven'
    }
    
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }

        stage('Compile & Clean'){
            steps{
                sh "mvn clean compile"
            }
        }

        stage('package'){
            steps{
                sh "mvn package"
            }
        }

        stage('Build Docker image'){
            steps {
                echo "Build number is ${BUILD_NUMBER}"
                sh 'sudo docker build -f Dockerfile -t gautamkms/ci_cd_demo:${BUILD_NUMBER} .'
            }
        }

        stage('Docker Login'){        
            steps {
                    withCredentials([string(credentialsId: 'dockerUID', variable: 'id'), string(credentialsId: 'dockerPwd', variable: 'pwd')]) {
                        echo "Id number is >>>>>>>>>>>>>>> ${id}"
                        sh "sudo docker login -u ${id} -p ${pwd}"
                }
            }                
        }

        // stage('Docker Push'){
        //     steps {
        //         sh 'docker push gautamkms/ci_cd_demo:${BUILD_NUMBER}'
        //     }
        // }

        // stage('Docker deploy'){
        //     steps {
        //         sh 'docker run -itd -p  8085:8085 gautamkms/ci_cd_demo:${BUILD_NUMBER}'
        //     }
        // }

    }

    post {
        always {
            cleanWs()
        }
    }





// ## To Execute 'sudo' commands run the following commands and add following text in to it
// sudo su    
// visudo -f /etc/sudoers

// add add following line at the end.

// jenkins ALL= NOPASSWD: ALL

}