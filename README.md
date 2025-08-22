Multi-Cloud DevOps Project: AWS EKS & Azure AKS Deployment
Project Overview
This project demonstrates a comprehensive multi-cloud DevOps implementation deploying containerized Nginx applications on both AWS EKS and Azure AKS clusters. The project utilizes Infrastructure as Code, automated CI/CD pipelines, configuration management, and cloud monitoring to showcase complete DevOps lifecycle management across two major cloud platforms.
Technology Stack

Cloud Platforms: AWS (EKS, CloudWatch) & Azure (AKS, Monitor)
Infrastructure as Code: Terraform
CI/CD Pipeline: Jenkins
Configuration Management: Ansible
Container Orchestration: Kubernetes
Monitoring: AWS CloudWatch & Azure Monitor
Application: Nginx web server with custom HTML content

Project Components
1. Infrastructure (Terraform)
AWS EKS Setup (eksmain.tf)

VPC with public/private subnets across 2 availability zones
EKS cluster v1.27 with managed node groups
t3.medium instances with auto-scaling capabilities
Proper IAM roles and security configurations

Azure AKS Setup (aksmian.tf, main.tf)

Resource group in East US region
AKS cluster with 2 Standard_DS2_v2 nodes
Virtual network with security groups
Linux VM with public IP for additional services

2. Configuration Management (Ansible)
Inventory Files: Separate configurations for AWS and Azure instances with SSH key management
Playbooks:

ngnixsetup.yaml: Base Nginx installation and service configuration
playbook.yaml: Multi-cloud deployment with conditional logic for AWS/Azure specific configurations
Custom HTML content deployment based on cloud environment

3. CI/CD Pipeline (Jenkins)
Pipeline Stages (jenkinfile):

Repository cloning from GitHub
Parallel deployment to both AWS and Azure environments
Automated file transfer and service restart
Health verification and rollback capabilities
Success/failure notifications

4. Kubernetes Deployments
AWS EKS: LoadBalancer service with ConfigMap for custom content
Azure AKS: Kubernetes deployment with Azure-specific configurations
Both deployments include proper resource management and health checks
5. Monitoring & Observability
AWS CloudWatch: Cluster metrics, log aggregation, and automated alerting
Azure Monitor: AKS monitoring with performance insights and log analytics
Key Features

Multi-cloud deployment across AWS and Azure simultaneously
Infrastructure as Code with Terraform for reproducible environments
Automated CI/CD pipeline with Jenkins for continuous deployment
Configuration management with Ansible for consistent server setup
Container orchestration using Kubernetes on both cloud platforms
Comprehensive monitoring with native cloud monitoring solutions
Environment-specific content deployment based on cloud provider

Project Structure
├── terraform/aws/          # AWS infrastructure code
├── terraform/azure/        # Azure infrastructure code
├── ansible/               # Configuration management playbooks
├── jenkins/               # CI/CD pipeline configuration
├── kubernetes/            # K8s deployment manifests
└── web-content/           # Cloud-specific HTML content
Deployment Process

Infrastructure Provisioning: Use Terraform to create EKS and AKS clusters
Application Configuration: Run Ansible playbooks to configure Nginx servers
Container Deployment: Deploy applications to Kubernetes clusters
CI/CD Setup: Configure Jenkins pipeline for automated deployments
Monitoring Setup: Enable CloudWatch and Azure Monitor for observability

Skills Demonstrated

Multi-cloud architecture design and implementation
Infrastructure as Code with Terraform
CI/CD pipeline development with Jenkins
Configuration management with Ansible
Kubernetes container orchestration
Cloud monitoring and observability
DevOps best practices and automation
Cross-platform deployment strategies

This project showcases a complete DevOps workflow spanning infrastructure provisioning, application deployment, continuous integration/deployment, and monitoring across two major cloud platforms, demonstrating proficiency in modern cloud-native DevOps practices.
