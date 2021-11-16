pipeline{


    agent any

    stages{

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
                sh 'docker build -t  gautamkms/ci_cd_demo:${BUILD_NUMBER} .'
            }
        }

        stage('Docker Login'){        
            steps {
                withCredentials([string(credentialsId: 'dockerusrnm', variable: 'dockerUID'), string(credentialsId: 'dockerpwd', variable: 'dockerPWD')]) {
                    sh "docker login -u ${dockerUID} -p ${dockerPWD}"
                }
            }                
        }

        stage('Docker Push'){
            steps {
                sh 'docker push gautamkms/ci_cd_demo:${BUILD_NUMBER}'
            }
        }

        stage('Docker deploy'){
            steps {
                sh 'docker run -itd -p  8085:8085 gautamkms/ci_cd_demo:${BUILD_NUMBER}'
            }
        }

    }

    post {
        always {
            cleanWs()
        }
    }
}