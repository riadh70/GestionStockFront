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
    stage('Install node modules') {  
       steps {   
              sh 'echo "export PATH=/root/.nvm/versions/node/v12.22.12/bin:$PATH" > npm_wrapper.sh'
              sh 'echo "npm install" >> npm_wrapper.sh'
              sh 'sh npm_wrapper.sh' // Execute the wrapper script
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
