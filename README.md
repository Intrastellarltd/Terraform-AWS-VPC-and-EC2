# Terraform AWS VPC and EC2: Effortless Deployment of a Secure and Scalable 3-Tier Architecture on AWS

---

## Architecture Diagram

![Terraform AWS VPC and EC2 - Architecture](/architecture-diagram/k8s-aws-architecture-v18082023-AWS%20VPC%20-%20EC2%20Instance%20-%20Security%20Groups.png)

---

## Introduction

Welcome to the Terraform AWS VPC and EC2 repository – a one-stop solution to effortlessly deploying a robust 3-tier architecture on Amazon Web Services (AWS) using the power of Terraform. This caters to infrastructure enthusiasts, DevOps engineers and cloud architects. This repository is designed to simplify the deployment process and establish a secure, scalable, and high-performance environment in no time.

This workflow leverages Terraform's declarative approach to infrastructure as code to create a Virtual Private Cloud (VPC) with Web, App, and Database tiers seamlessly. With pre-configured AWS Security Group modules, the setup is fortified with well-defined inbound rules, ensuring the right balance between accessibility and security.

Multiple EC2 instances are deployed in private subnets along with a dedicated Bastion Host in a public subnet. The repository includes automation for attaching Elastic IPs to the Bastion Host, streamlining remote access to private instances.

But that's not all – we take it a step further by integrating null_resource with a duo of Terraform Provisioners: the File Provisioner and the Remote-exec Provisioner. These tools give provide the flexibility to initialize instances with the right configurations and execute remote commands effortlessly, saving time and manual effort.

This repository empowers its readers to architect, deploy, and manage a top-notch infrastructure on AWS with finesse elevating our client's cloud game together!

---

## Problem Statement and Solution

**Problem Statement:**
Deploying a secure and scalable 3-tier architecture on cloud infrastructure is a complex task, often involving multiple manual steps, potential security vulnerabilities, and considerable time investment. Coordinating the creation of Virtual Private Clouds (VPCs), managing security groups, provisioning instances, setting up a Bastion Host, and ensuring proper configuration across the tiers can be daunting, error-prone, and resource-intensive. This process demands a solution that streamlines and automates these tasks while maintaining a strong focus on security and efficiency.

**Solution:**
Introducing the Terraform AWS VPC and EC2 GitHub repository – your comprehensive solution for effortlessly setting up a robust 3-tier architecture on Amazon Web Services (AWS) using the power of Terraform. This repository provides a streamlined and automated workflow that addresses the challenges of manual deployments and security concerns.

With the provided Terraform scripts a VPC is created. The VPC has three distinct tiers – Web, App, and DB – each residing in its private subnet, ensuring separation of concerns and enhancing security. The included AWS Security Group Terraform module defines essential inbound rules, such as allowing HTTP port 80 and SSH port 22 access from the entire internet (0.0.0.0/0), while maintaining a balance between accessibility and security.

The heart of this solution lies in the automated deployment of multiple EC2 instances across the VPC's private subnets. These instances are provisioned with the necessary software and configurations, saving valuable time and effort. Additionally, the repository facilitates the creation of a dedicated EC2 instance acting as a Bastion Host in a public subnet, enhancing remote access capabilities.

To simplify remote management and configuration, the repository incorporates a null_resource with two Terraform Provisioners – File Provisioner and Remote-exec Provisioner. These tools efficiently initialize instances with required files and execute remote commands, all seamlessly integrated into the deployment process.

Say goodbye to complex manual setups and potential security gaps. This repository enables developers to architect, deploy, and manage a secure and scalable 3-tier architecture on AWS with ease, making their cloud infrastructure journey efficient, secure, and hassle-free.

---

## Terraform Commands

### Terraform Initialize

```shell
terraform init
```

---

### Terraform Validate

```shell
terraform validate
```

---

### Terraform plan

```shell
terraform plan
```

---

### Terraform Apply

```shell
terraform apply
```

---

### Terraform Destroy

```shell
terraform apply -destroy -auto-approve
```

---
