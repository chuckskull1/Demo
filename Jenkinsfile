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
		sh '/usr/local/bin/docker build -t rdimri/devops:v1.0 .'
            }
        }
		stage('Tag and Push image to Docker')
        {
            steps{
                    
                    echo "==========Push image=========="
		    sh '/usr/local/bin/docker login -u rdimri -p regno@123'
		    sh '/usr/local/bin/docker push rdimri/devops:v1.0'
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
