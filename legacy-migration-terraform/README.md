# 🏗️ Legacy System to AWS Migration (Lift-and-Shift + Modernization)

This project migrates a legacy on-premise web application to AWS using a Lift-and-Shift strategy, followed by partial modernization using cloud-native resources and Terraform automation.

## 🔧 Phases

**Phase 1:**  
- VPC creation with public and private subnets  
- Internet Gateway and route table configuration

**Phase 2:**  
- EC2 instance deployment with Apache web server using a user data script  
- Security groups for SSH/HTTP access  
- Key pair usage for SSH access

**Phase 3:**  
- RDS PostgreSQL database in a private subnet  
- Security groups allowing RDS access only from EC2  
- Variable-based infrastructure management

**Phase 4:**  
- Outputs for EC2 public IP and RDS endpoint  
- Connection verification from EC2 to RDS (Python/Postgres or CLI)

**Phase 5:**  
- Planned: S3 bucket for static content, logs, and backups

## 💻 Tech Stack

- AWS EC2
- AWS RDS (PostgreSQL)
- AWS VPC/Subnetting
- AWS Security Groups
- Terraform (Infrastructure as Code)

## ✅ Outcomes

- Infrastructure fully provisioned with Terraform  
- Secure architecture: EC2 in public, RDS in private  
- Web server live via EC2 + Apache  
- Database isolated and secured  
- Reproducible and modular Terraform codebase

## 📂 File Structure

```bash
legacy-migration-terraform/
│
├── main.tf                  # AWS provider setup
├── provider.tf              # Terraform provider/version requirements
├── vpc.tf                   # VPC, subnets, routes, IGW
├── ec2.tf                   # EC2 instance + user_data
├── rds.tf                   # RDS PostgreSQL setup
├── security_groups.tf       # EC2 & RDS security groups
├── variables.tf             # Input variables
├── terraform.tfvars         # Variable values
├── outputs.tf               # Useful outputs (IP, endpoint)
├── README.md                # Project overview and instructions
└── .gitignore               # Ignore Terraform state & cache
