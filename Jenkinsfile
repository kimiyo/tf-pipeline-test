// 이런 형태
node {
    stage('Example') {
            print(env)
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/kimiyo/tf-pipeline-test.git']]])
            /*commandStr = 'terraform init\n'    
            commandStr += 'if [$? -eq 0]\n'
            commandStr += 'then\n'
            commandStr += ' echo "Success"\n'
            commandStr += 'else\n'
            commandStr += ' echo "Failure"\n'
            commandStr += 'fi\n' 
            print(commandStr) */
            sh "pwd"
            echo "terraform init"
            // sh "terraform apply --auto-approve" 
    }
}