pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "==========Building========="
		sh '/usr/local/share/dotnet/dotnet build WebApiTest.sln -p:Configuration=release -v:q'
            }
        }
		
		
		
        stage('publish') {
            steps {
                echo "==========Publishing=========="
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
