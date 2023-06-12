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
        sh '/root/.nvm/versions/node/v14.21.3/bin/npm install' // Install project dependencies
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
