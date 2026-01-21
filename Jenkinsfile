pipeline {
    agent any

    // Aquí definimos la herramienta Maven que configuraste en Jenkins
    tools {
        maven 'Maven' // Asegúrate de que este nombre coincida con el que pusiste en 'Global Tool Configuration'
    }

    stages {
        // Paso 1: El git (Jenkins lo hace automáticamente al usar 'Pipeline from SCM')
        stage('Paso 1: Git Checkout') {
            steps {
                checkout scm
            }
        }

        // Paso 2: Compilar proyecto
        stage('Paso 2: Compilar') {
            steps {
                sh 'mvn clean compile'
            }
        }

        // Paso 3: Correr los test
        stage('Paso 3: Test') {
            steps {
                sh 'mvn test'
            }
        }

        // Paso 4: Desplegar el WAR
                stage('Paso 4: Desplegar') {
                    steps {
                        // Generamos el archivo .war
                        sh 'mvn package -DskipTests'
                        sh 'cp target/*.war /var/jenkins_home/tomcat-deploy/'
                    }
                }
    }
}