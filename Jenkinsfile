pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout your Terraform code repository
                    git branch: 'main', url: 'https://github.com/taj-DevOps/terraform-cicd.git'
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    // Change working directory
                    dir('layers') {
                        // Initialize Terraform
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Change working directory
                    dir('layers') {
                        // Run Terraform Plan
                        sh 'terraform init'
                        sh 'terraform plan'
                    }
                }
            }
        }

        // Uncomment the following stages for apply and destroy if needed
        /*
        stage('Terraform Apply') {
            steps {
                script {
                    // Change working directory
                    dir('layers') {
                        // Apply Terraform changes
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform apply --auto-approve'
                    }
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    // Change working directory
                    dir('layers') {
                        // Destroy Terraform resources
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform destroy --auto-approve'
                    }
                }
            }
        }
        */
    }

    // Uncomment the following post block if you want to destroy resources always after the pipeline
    /*
    post {
        always {
            // Clean up and destroy resources (optional)
            script {
                // Change working directory
                dir('layers') {
                    // Destroy Terraform resources
                    sh 'terraform init'
                    sh 'terraform plan'
                    sh 'terraform destroy --auto-approve'
                }
            }
        }
    }
    */
}
