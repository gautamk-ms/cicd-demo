pipeline{

    // agent any

    // tools{
    //     maven "3.8.3"
    // }

    environment {
        //run ==> mkdir -p /temp/maven
        JAVA_TOOL_OPTIONS = "-Duser.home=/home/jenkins"
    }

    agent {
        docker {
            image "maven:3.8.3-openjdk-8"
            label "docker"
            args "-v /tmp/maven:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2"
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