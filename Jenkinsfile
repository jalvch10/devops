pipeline {

  environment {
    dockerimagename = "jalvch10/react-app"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git credentialsId: 'githubtoken', url: 'https://github.com/jalvch10/devops.git', branch: 'main'
      }
    }

    stage('Deploying React.js container to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "deployment.yaml", "service.yaml")
        }
      }
    }

  }

}