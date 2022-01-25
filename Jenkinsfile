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
                sh 'docker stop $(docker ps -a -q)'
                sh 'docker build -t hello-word-java-apache-tomcat .'
                sh 'docker run -d --rm -p 8083:8082 hello-word-java-apache-tomcat'
                
            }
        }
        stage('Test Integration') {
            steps {
                echo 'Testing integration..'
                sh 'wget --tries=10 http://localhost:8083/app-web-demo/ | grep Nefta'
            }
        }
    }
}