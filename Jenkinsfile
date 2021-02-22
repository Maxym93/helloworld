pipeline {
    agent any
    tools {
        maven 'maven3'
        dockerTool 'docker'
    }
    stages {
        stage ('Git pull') {
            steps {
                git url: 'https://github.com/Maxym93/helloworld.git'
            }
        }

        stage ('Test') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "mvn test"
                }
            }
        }

        stage ('Build') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "mvn clean verify"
                }
            }
        }

        stage ('Docker') {
            steps {
                script {
                    docker.build("my_test")
                }
            }
        }
    }

    post { 
        always { 
            cleanWs()
        }
    }
}

