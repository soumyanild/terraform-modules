pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION="ap-south-1"
        THE_CREDS_OF_AWS=credentials('my-aws-creds')
    }
    stages {
        stage('Checkout') {
            steps {
                cleanWs()
                sh '''
                git clone https://github.com/soumyanild/terraform-modules.git
                '''
            }
        }
        stage('terraform plan') {
            steps {
                script {
                    sh'''
                    cd terraform-modules
                    '''
                    if (infrastructure == "${infrastructure}") {
                        if (action == "plan"){
                        sh '''
                        echo "Terraform infrastructure is --> ${infrastructure}"
                        cd terraform-modules/${infrastructure}-module
                        terraform init
                        terraform plan
                        '''
                        }else {
                            echo "Skipping ${infrastructure} plan"
                        }
                    }
                }
            }
        }
        stage('terraform apply') {
            steps {
                script {
                    sh'''
                    cd terraform-modules
                    '''
                    if (infrastructure == "${infrastructure}") {
                        if (action == "apply"){
                        sh '''
                        echo "Terraform infrastructure is --> ${infrastructure}"
                        cd terraform-modules/${infrastructure}-module
                        terraform init
                        terraform plan
                        terraform apply --auto-approve
                        '''
                        }else {
                            echo "Skipping ${infrastructure} apply"
                        }
                    }
                }
            }
        }
        stage('terraform destroy') {
            steps {
                script {
                    sh'''
                    cd terraform-modules
                    '''
                    if (infrastructure == "${infrastructure}") {
                        if (action == "destroy"){
                        sh '''
                        echo "Terraform infrastructure is --> ${infrastructure}"
                        cd terraform-modules/${infrastructure}-module
                        terraform init
                        terraform plan -destroy
                        terraform destroy --auto-approve
                        '''
                        }else {
                            echo "Skipping ${infrastructure} destroy"
                        }
                    }
                }
            }
        }
    }
}
