# 🚀 Terraform AWS Infrastructure

This repository contains reusable Terraform code to deploy a secure, minimal AWS infrastructure with a VPC, public subnet, and EC2 instance.

---

## 🧰 Features

- Automated provisioning with Terraform
- Secure VPC + subnet creation
- Deploys EC2 instance with tags
- Outputs public IP automatically
- Easy to scale or customize

---

## 📦 Tools & Technologies

| Category | Tools |
|----------|-------|
| Cloud | AWS |
| IaC | Terraform |
| OS | Linux |
| Authentication | IAM |


---

## 📁 Structure
main.tf --> Core infrastructure
variables.tf --> Input variables
outputs.tf --> Exported values
providers.tf --> Provider config (AWS)
terraform.tfvars.example--> Example config file
# terraform-aws-infrastructure


---

## 🛠 Usage

### 1️⃣ Clone the repo
git clone https://github.com/Akshatp32/terraform-aws-infrastructure


### 2️⃣ Update values

Create your own `terraform.tfvars` file:
cp terraform.tfvars.example terraform.tfvars

### 3️⃣ Initialize Terraform
terraform init

### 4️⃣ Validate & Apply
terraform plan
terraform apply -auto-approve

---

## 📤 Outputs

After successful deployment, Terraform will display:
ec2_public_ip = "X.X.X.X"


---

## 🧹 Destroy Infrastructure (Optional)
terraform destroy -auto-approve


---

## 👨‍💻 Author

**Akshat Prajapati**  
AWS & DevOps Engineer  
📍 India  

LinkedIn: www.linkedin.com/in/akshat-prajapati-a89432181
Fiverr: https://www.fiverr.com/s/R7PwqQV
upwork: https://www.upwork.com/freelancers/~014899e2c1e2bd89fa?mp_source=share

