
def startFunction(){
    echo "call startFunction()"
}
def stopFunction(){
    echo "call stopFunction()"
}
def createFunction(){
    echo "call createFunction()"
}
def terminateFunction(){
    echo "call terminateFunction()"
}
node {
    stage('Example') {
            //print(env)
            echo sh(script: 'env|sort', returnStdout: true)
            print("env.Operation=[" + env.Operation+"]")
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
            if (env.Operation == "Create") {
                startFunction()
            }
            else if (env.Operation == "Start") {
                echo "run Start"
            }
            else if (env.Operation == "Stop") {
                echo "run Stop"
            }
            else if (env.Operation == "Terminate") {
                echo "run Terminate"
            }
            //echo "terraform init"
            // sh "terraform apply --auto-approve" 
    }
}