// 이런 형태
node {
    stage('Example') {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']],
     userRemoteConfigs: [[url: 'https://github.com/kimiyo/tf-pipeline-test.git']]])
            sh 'terraform init'
        }
    }
}