pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('esprituser-dockerhub')   
    }
    stages { 
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/riadh70/GestionStockFront.git'
            }
        } 
        stage('Install node modules') {  
           steps {   
              
              sh  "npm install" 
             
             }
       } 

          stage('Build Artifact') {
           steps {
              sh 'npm run build -- --prod' // Build the Angular app for production
      }
    }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t esprit/angularapp:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u esprituser -p P@ssw0rd@imc'

            }
        }
        stage('push image') {
            steps{
                sh 'docker push esprit/angularapp:$BUILD_NUMBER'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}
