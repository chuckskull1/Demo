pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "==========Building=========="
		sh "dotnet build Devops.sln"
            }
        }
		
		
		
        stage('publish') {
            steps {
                echo "==========Building=========="
            }
        }
		
		stage ('BuildDockerImage')
        {
            steps {
                echo "==========Building=========="
            }
        }
		stage('Tag and Push image to Docker')
        {
            steps{
                    
                    echo "==========Building=========="
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
