pipeline {
    agent any
    tools { 
        maven 'maven' 
        
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }

        stage ('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage ('deploy') {
             when {
                branch 'main'
            }
             input {
                message "Can we Proceed?"
                ok "Yes"
                submitter "padmaraju"
                parameters {
                    string(name: 'PERSON', defaultValue: 'padmaraju', description: 'Member')
                }
            }
            steps {
              deploy adapters: [tomcat9(credentialsId: 'tomcatdeployer', path: '', url: 'http://44.195.128.70:8080')], contextPath: 'SimpleTomcatWebApp', onFailure: false, war: '**/*.war'  
           }
            
        }
        
    }
}
