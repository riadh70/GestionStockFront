pipeline {   

//    environment{
//        registry="esprituser/gestiondestockfront"
//        registryCredential='esprituser-dockerhub'
//        PATH = "$PATH:/usr/local/bin"
//  } 

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
              
              sh  "npm install" 
             
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

     stage("docker build") {
       steps{
           script {
                sh 'docker build -t esprituser/gestiondestockfront:latest -f ./Dockerfile .'

              }
           }
         }  
         stage("DockerHub login ") {
              steps{
                  sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u esprituser -p P@ssw0rd@imc'
            }
          }
//         stage("docker push") {
//            steps{
//              script {
//                docker.withRegistry( '', registryCredential ) {
//                dockerImage.push()
//             }
//           }
//         }
//      }   


  }
}
