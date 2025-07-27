# 🚀 Multi Node Jenkins server with Terraform

A reusable Terraform module that launches an EC2 instance with dynamic tagging and initialization scripting capabilities. Designed for cloud automation workflows and infrastructure-as-code best practices.

## 🌟 Features

- Provisions EC2 instance using custom AMI and instance type  
- Allows tag injection via variable map  
- Supports shell/cloud-init scripts through `user_data`  
- Modular structure for reuse across environments

## 📦 Requrements

- Installed terraform in system
- Internet connection to system

## Flow

- Open Console and clone repo in your system
- open terminal and run following command
```bash
terraform init
terraform plan
terraform apply --auto-approve
```
- After that, Login to jenkins - main server and run following command in root user.
- For root user:
```bash
sudo -i
```
```bash
#!/bin/bash

# Navigate to /etc directory
cd /etc

# Add Jenkins to sudoers with NOPASSWD
echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Add Jenkins to the root group
usermod -a -G root jenkins
```

## 🗂️ Folder Structure
```tree
.
├── Repo/
│   └── EC2/
│       ├── server.tf
│       ├── variable.tf
│       ├── outputs.tf
|   └── ShellScripts/
│       ├── java.sh
│       ├── jenkins.sh
└── main.tf
└── provider.tf
└── variable.tf
```