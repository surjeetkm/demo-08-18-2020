node{
	stage("Git clone"){
		git credentialsId: 'GITHUB_CREDENTIALS', url: 'https://github.com/surjeetkm/demo.git'
	}
	stage("Maven clean build artifact"){
		def mavenHome= tool name: "Maven", type: "maven"
		def command= "${mavenHome}/bin/mvn"
		sh "${command} clean package"
	}
	stage("Run Junit and Integration Test cases"){}
	stage("Build docker image"){
		app=docker.build("dockerrock123/demo")
	}
	stage("Push Docker image to Container Registry"){
		docker.withRegistry('https://registry.hub.docker.com','dockerhub'){
			app.push("latest")
		}
	}
}