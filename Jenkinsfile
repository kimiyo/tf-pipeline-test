//----------Functions
def startFunction(){
    echo "call startFunction()"
}
def stopFunction(){
    echo "call stopFunction()"
}
def createFunction(){
    echo "call createFunction()"
    sh "terraform init"
    sh "terraform apply --auto-approve"
}
def terminateFunction(){
    echo "call terminateFunction()"
    sh "terraform init"
    sh "terraform destroy --auto-approve"
}
def getGitSource(){
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/kimiyo/tf-pipeline-test.git']]])
}
//-----------------------
node {
    stage('Example') {
            //print(env)
            echo sh(script: 'env|sort', returnStdout: true)
            print("env.Operation=[" + env.Operation+"]")
            getGitSource()
            sh "pwd"
            if (env.Operation == "Create") {
                createFunction()
            }
            else if (env.Operation == "Start") {
                startFunction()
            }
            else if (env.Operation == "Stop") {
                stopFunction()
            }
            else if (env.Operation == "Terminate") {
                terminateFunction()
            }
            //echo "terraform init"
            // sh "terraform apply --auto-approve" 
    }
}