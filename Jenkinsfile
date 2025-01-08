node {
    stage('Clone repository') {
        git credentialsId: 'github-access', url: 'https://github.com/wykim93/rolling-paper2.git'
    }

    stage('Build image') {
        dockerImage = docker.build("wonyoung1/node-front:1.0")
    }

    stage('Push image') {
        withDockerRegistry([credentialsId: "docker-access", url: ""]) {
            dockerImage.push()
        }
    }
}

