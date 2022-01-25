pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                echo 'Testing Junit..'
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building application..'
                sh 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application....'
                sh 'docker build -t hello-word-java-apache-tomcat .'
                sh 'docker run -d --rm -p 7000:80 hello-word-java-apache-tomcat'
                
            }
        }
        stage('Test Integration') {
            steps {
                echo 'Testing integration..'
                sh 'wget http://localhost:8092/'
                sh 'cat index.html | grep Nefta'
            }
        }
    }
}