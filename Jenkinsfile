pipeline {
    agent any
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage ('Build') {
            steps {
                withMaven(maven: 'maven-3') {
                    sh "mvn clean verify"
                }
            }
        }
    }
}