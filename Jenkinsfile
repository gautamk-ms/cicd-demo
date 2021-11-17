pipeline{

    agent any
        
        // docker {image 'maven:3.3.3'}}

    stages{

        // stage ('Initialize') {
        //     steps {
        //         sh '''
        //             echo "PATH = ${PATH}"
        //             echo "M2_HOME = ${M2_HOME}"
        //         ''' 
        //     }
        // }

        stage('Compile & Clean'){
            steps{
                // def mvnHome = tool name: 'Maven', type: 'maven'
                // sh "${mvnHome}/bin/mvn clean compile"

                echo "Hi .........."
            }
        }

        // stage('package'){
        //     steps{
        //         def mvnHome = tool name: 'Maven', type: 'maven'
        //         sh "${mvnHome}/bin/mvn package"
        //     }
        // }

        // stage('Build Docker image'){
        //     steps {
        //         sh 'docker build -t  gautamkms/ci_cd_demo:${BUILD_NUMBER} .'
        //     }
        // }

        // stage('Docker Login'){        
        //     steps {
        //         withCredentials([string(credentialsId: 'dockerUID', variable: 'dockerUID'), string(credentialsId: 'dockerPWD', variable: 'dockerPWD')])  {
        //             sh "docker login -u ${dockerUID} -p ${dockerPWD}"
        //         }
        //     }                
        // }

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
}