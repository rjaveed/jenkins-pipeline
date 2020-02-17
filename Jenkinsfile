pipeline {

    agent any
    environment {
    PASSWORD = credentials('registry-pass')a
    }
    stages {

        stage('Build') {
            steps {
                sh '''
		    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh
		   echo Building now...

                '''
            }
            post {
        success {
            archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
        }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
                sh 'echo Testing the jar now...'
            }
            post {
        always {
            junit 'java-app/target/surefire-reports/*.xml'
        }
    }


        }

        stage('Push') {
            steps {
               sh './jenkins/push/push.sh'
	       sh 'echo pushing to docker hub'
            }
        }

        stage('Deploy') {
            steps {
               sh './jenkins/deploy/deploy.sh'
	       sh 'echo Deploying to AWS'
            }
        }
    }
}
