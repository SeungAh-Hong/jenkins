pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/SeungAh-Hong/jenkins', branch: 'main'
      }
    }
    stage('docker build') {
      steps {
        sh '''
        sudo docker build -t rapa.iptime.org:5000/nginx:seung .
        sudo docker push rapa.iptime.org:5000/nginx:seung
        '''
      }
    }
    
    stage('deploy k8s') {
      steps {
        sh '''
        sudo kubectl apply -f test.yml
        '''
      }
    }
    
  }
}
