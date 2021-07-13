pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "==========Building========="
		sh '/usr/local/share/dotnet/dotnet build Devops.sln -p:Configuration=release -v:q'
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
                echo "==========BuildDockerImage==========="
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
