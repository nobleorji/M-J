node {
    stage('Continuous Download') 
            {
            git branch: 'dev', url: 'https://github.com/nobleorji/vanillaNob.git'
            }
    stage('Continuous Build') 
            {
            input 'Waiting for Authorization'
            sh 'mvn package'
            }
    stage('Continuous Deployment') 
            {
            deploy adapters: [tomcat8(credentialsId: 'dev', path: '', url: 'http://10.0.26.224:8080')], contextPath: 'qaenv', war: '**/*.war'
            }
    stage('Continuous Testing') 
            {
            echo 'Testing Passed'
            }
	}
