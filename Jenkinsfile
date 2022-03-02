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
                branch 'pipeline'
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
              deploy adapters: [tomcat9(credentialsId: '25f44b23-77c3-4718-a0bd-e115c63dca75', path: '', url: 'http://44.195.128.70:8080/')], contextPath: 'sampletomcatwebapp', war: '**/*.war'  
           }
            
        }
        
    }
}
