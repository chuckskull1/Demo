pipeline {
    agent any
    parameters {
	string(
		name: "BRANCH_NAME",
		description: "Branch name that you want to build",
		defaultValue: "main"
		)
	string(
		name: "DOCKER_PASS",
		description: "Password for your docker user"
		)
	choice(
		name: "WORKFLOW",
		description: "Select the environment you want to deploy your code on",
		choices : ["Build","Deploy"]
		)
	}
    stages {
        stage('build') {
            steps {
                echo "==========Building========="
		sh 'dotnet build Devops.sln -p:Configuration=release -v:q'
            }
        }
		
		
		
        stage('Test') {
            steps {
                echo "==========Test=========="
            }
        }
	    
	stage('Publish') {
		when{
                expression{params.WORKFLOW == "Deploy"}
            }
		steps {
		    sh 'dotnet restore'
		    sh 'dotnet publish Devops.sln -c Release'
		}
	}
	    
	stage ('BuildDockerImage')
        {
		when{
                expression{params.WORKFLOW == "Deploy"}
            }
            steps {
                echo "==========BuildDockerImage=========="
		sh 'docker build -t rdimri/devops:latest .'
            }
        }
	    
	stage('Tag and Push image to Docker')
        {
		when{
                expression{params.WORKFLOW == "Deploy"}
            }
            steps{
                    
                    echo "==========Push image=========="
		    sh 'docker login -u rdimri -p ${DOCKER_PASS}'
		    sh 'docker push rdimri/devops:latest'
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
