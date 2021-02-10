pipeline {
    agent any
    tools {
        maven 'maven3'
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

        stage ('Verify') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "mvn clean verify"
                }
            }
        }

        stage ('Docker build and run') {
            steps {
                sh 'docker build -t my-tomcat . && docker run -d my-tomcat'
            }
        }
    }
}