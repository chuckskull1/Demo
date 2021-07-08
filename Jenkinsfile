pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "==========Building========="
            }
        }
		
		
		
        stage('Test') {
            steps {
                echo "==========Test=========="
            }
        }
		
		stage ('BuildDockerImage')
        {
            steps {
                echo "==========BuildDockerImage=========="
            }
        }
		stage('Tag and Push image to Docker')
        {
            steps{
                    
                    echo "==========Push image=========="
            }
        }
		stage('Allure report generation')
        {
            steps
            {
                echo"===========Allure report==========="
            }
        }
				
    }
}
