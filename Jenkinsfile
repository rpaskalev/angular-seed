pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('build image') {
      steps {
        sh 'docker build -t Angular-app .'
      }
    }
     
    stage('run container') {
      steps {
         sh 'docker run -it -d --net=host Angular-app'
      }
    }      
  }
}
