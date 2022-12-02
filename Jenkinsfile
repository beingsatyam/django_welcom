pipeline{
    agent any
    stages {
        stage('setup python venv'){
            steps{
                sh '''
                chmod +x env_setup.sh
                ./env_setup.sh
                '''
                } 
        }
        stage('setup gunicorn setup'){
            steps {
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''

            }
        }
        stage('setup nginx'){
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''

            }
        }
    }
}