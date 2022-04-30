pipeline{
        agent any
                tools { 
                maven 'default' 
                jdk 'jdk9' 
                }
        stages {
                stage('Checkout'){
                        steps{
                        git branch: 'master',
                        url: 'https://github.com/sjega93/Employee-CRUD-in-Spring-Boot.git'
                        }
                        }
                stage('Build'){
                        steps{
                                script{
                                        dockerImage=docker.build "sathishtest"
                              
                        }
                }
        }
}
