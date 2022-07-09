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
        //     when {
         //       branch 'main'
        //    }
             input {
                message "Can we Proceed?"
                ok "Yes"
                submitter "padmaraju"
                parameters {
                    string(name: 'PERSON', defaultValue: 'padmaraju', description: 'Member')
                }
            }
            steps {
              deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://13.233.167.121:8080/')], contextPath: 'sampletomcatwebapp', war: '**/*.war'  
           }
            
        }
        
    }
}
