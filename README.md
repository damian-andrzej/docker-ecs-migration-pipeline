# Moving App to Amazon ECS via CI/CD Pipeline

This guide will walk you through the process of migrating your local app to **Amazon ECS** using a **CI/CD pipeline**. The steps include creating an **ECR repository**, authenticating via AWS CLI, uploading a Docker image to **Amazon ECR**, and setting up a pipeline to automate deployments to ECS.

---

## Prerequisites

- **AWS CLI** installed and configured on your machine.
  - If not installed, follow [this link](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) for installation instructions.
  - Ensure you have valid AWS credentials by running `aws configure`.
  
- **Docker** installed on your machine.
  - If not installed, follow [this link](https://docs.docker.com/get-docker/) for installation instructions.
  
- **GitHub account** to host your repository for CI/CD pipeline.

- An **AWS account** with access to **Amazon ECS**, **ECR**, and **IAM** permissions for creating and managing resources.

---

## Step 1: Create an Amazon ECR Repository

1. **Log in to AWS Console** and navigate to **Amazon ECR**.
2. Click on **Create repository**.
3. Choose **Private** repository.
4. Provide a name for the repository (e.g., `my-app-repo`).
5. Click **Create repository** to create the repository.

Alternatively, you can create the repository using the **AWS CLI**:

```bash
aws ecr create-repository --repository-name my-app-repo
