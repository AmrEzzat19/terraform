# Creating Compute Instances with a reserved public IP

## STEPS
#### 1. Prepare
   
   prepare environemt for creating compute instance
   - install terraform
   - create SSH Encryption key
     
#### 2. Configuration Files
######   1. provider.tf 
      - refers to the plugin that allows Terraform to interact with OCI
   
######   2. network resources.tf    
      - contains a resource to creates a VCN in OCI which is a private network
      - contains a resource to creates a subnet within VCN

######   3. core instance.tf
      - contains a resource to create a compute instance with public ip

######    4.variables.tf
      - identify the variables need in this file
   
######    5. terrafrom.tfvars
      - declare varibales
   
######    6. output.tf
      - to display public ip of the VM after running the configration files
#### 3. Steps to Create a Virtual Machine
      - terraform init
      - terraform apply
