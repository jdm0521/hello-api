Hello World API – DevOps Project

This project is a simple end-to-end DevOps workflow showcasing how to build, containerize, and deploy a basic Python API. The API is built with Flask, containerized with Docker, and deployed to Microsoft Azure using GitHub Actions and Terraform. I used a Linux VM as my development environment to strengthen my Linux skills throughout the process.

🚀 Workflow Overview

Application Development

Built a lightweight “Hello World” API using Python and Flask.

Containerization

Packaged the application into a Docker image.

CI Pipeline (GitHub Actions)

On every push to the main branch, the workflow automatically:

Builds the Docker image

Tags it

Pushes it to Docker Hub using the latest tag

Infrastructure as Code (Terraform)

Provisioning Azure resources using Terraform:

Creates a Resource Group in East US

Deploys an Azure Container Instance (ACI) with a public IP

Pulls the latest Docker image directly from Docker Hub

📌 Summary

This project demonstrates a complete CI/CD pipeline—from writing code to deploying cloud infrastructure. While there are many ways it can be improved, it served as a hands-on practice exercise to better understand DevOps tools, workflows, and cloud deployments.




<img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/9bbc5fc2-4fec-448e-b5b3-166a8f48ecb7" />
