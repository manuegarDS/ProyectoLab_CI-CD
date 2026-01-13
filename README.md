# Terraform AWS Lab – Infrastructure as Code (IaC)

## 📌 Overview
This repository contains a **design-focused Infrastructure as Code (IaC) home lab** built with **Terraform** and targeting **AWS**.  
The goal of this project is to strengthen hands-on skills in modular Terraform design, environment separation, and cloud infrastructure modeling following real-world best practices — **without incurring AWS costs**.

---

## 🎯 Objectives
- Practice **Infrastructure as Code** using Terraform
- Design reusable **Terraform modules**
- Separate environments using a **root module pattern**
- Model AWS networking components (VPC, subnets, routing)
- Prepare the project for future CI/CD integration with GitHub
- Build a portfolio-ready project for professional growth

---

## 🧱 Architecture (Current Scope)
The current implementation focuses on **AWS networking**:

- VPC
- Public and private subnets (per AZ)
- Internet Gateway
- Route tables and associations

> ⚠️ This project is currently running in **design-only mode**.  
> Terraform plans are generated without applying resources to AWS.

---

## 📂 Repository Structure

```text
terraform/
├── envs/
│   └── dev/                # Root module (DEV environment)
│       ├── main.tf
│       ├── variables.tf
│       ├── provider.tf
│       └── terraform.tfvars
│
└── modules/
    └── networking/         # Reusable networking module
        ├── vpc.tf
        ├── subnets.tf
        ├── igw.tf
        ├── route_tables.tf
        ├── variables.tf
        └── outputs.tf



