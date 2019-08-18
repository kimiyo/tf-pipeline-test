// 이런 형태
node {
    stage('Example') {
        echo env.BRANCH_NAME
        if (env.BRANCH_NAME == 'master') {
            echo 'I only execute on the master branch'
        } else {
            echo 'I execute elsewhere'
            sh "ls -altr"
            sh "pwd"
            checkout([$class: 'GitSCM', branches: [[name: '*/master']],
     userRemoteConfigs: [[url: 'https://github.com/kimiyo/tf-pipeline-test.git']]])
            sh 'terraform init'
            sh "ls -altr"
        }
    }
}