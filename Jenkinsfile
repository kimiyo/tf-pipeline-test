// 이런 형태
node {
    stage('Example') {
        echo env.BRANCH_NAME
        if (env.BRANCH_NAME == 'master') {
            echo 'I only execute on the master branch'
        } else {
            echo 'I execute elsewhere'
            sh "ls -altr"
            sh 'git clone git@github.com:kimiyo/tf-pipeline-test.git'
            sh "ls -altr"
        }
    }
}