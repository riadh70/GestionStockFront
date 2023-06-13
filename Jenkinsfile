pipeline {
  agent any

  stages { 
    stage("Cloning Project"){
        steps {
           git branch: 'master',
           url: 'https://github.com/riadh70/GestionStockFront.git'     
           echo 'checkout stage'
          }
       } 
    stage('Build') {  
       steps {
          sh 'source /root/.nvm/nvm.sh && nvm use 12.22.12 && npm install'
          sh 'source /root/.nvm/nvm.sh && nvm use 12.22.12 && npm run build'
       }
    }

//    stage('Test') {
//      steps {
//        sh 'npm run test' // Run unit tests
//      }
//    }

//    stage('Build Artifact') {
//      steps {
//        sh 'npm run build -- --prod' // Build the Angular app for production
//      }
//    }


  }
}
