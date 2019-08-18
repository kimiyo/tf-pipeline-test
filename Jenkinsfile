// 이런 형태
node {
    stage('Example') {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/kimiyo/tf-pipeline-test.git']]])
            commandStr = 'terraform init\n'
                       + 'if [$? -eq 0]\n'
                       + 'then\n'
                       + ' echo "Success"\n'
                       + 'else\n'
                       + ' echo "Failure"\n'
                       + 'fi\n'
            
            sh commandStr
    }
}