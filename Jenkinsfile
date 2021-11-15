pipeline{

    // agent any

    // tools{
    //     maven "3.8.3"
    // }

    agent {
        docker {
            image "maven:3.8.3-openjdk-8"
            label "docker"
        }
    }



    stages{
        stage("Build") {
            steps {
                sh "mvn -version"
                sh "mvn clean install"
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}