pipeline {
    agent { label 'master' }
    
    stages{
        stage('REMOVENDO SNAPSHOT'){
            steps{withCredentials([usernamePassword(credentialsId: 'VSPHERE', passwordVariable: 'password', usernameVariable: 'username')]) {
                    pwsh './remove_snapshot.ps1'
                }
            }
        }
        stage('CRIANDO SNAPSHOT'){
            steps{withCredentials([usernamePassword(credentialsId: 'VSPHERE', passwordVariable: 'password', usernameVariable: 'username')]) {
                    pwsh './create_snapshot.ps1'
                }
            }
        }
    }
}
