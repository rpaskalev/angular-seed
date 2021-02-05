pipeline {
  agent any
    
  stages {
        
    stage('build image') {
      steps {
        sh 'docker build -t angular-app .'
      }
    }
     
    stage('run container') {
      steps {
         sh 'docker run -it -d -p 8000:8000 angular-app'
      }
    }      
  }
}
