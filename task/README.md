# Creating Compute Instances with public IP

## STEPS
#### 1. Prepare
   
   prepare environemt for creating compute instance
   - install terraform
   - create SSH Encryption key
     
#### 2. Configuration Files
######   1. provider.tf 
      - refers to the plugin that allows Terraform to interact with OCI(Oracle Cloud Infrastructure)
   
######   2. network Module    
      - contains a resource that creates a VCN(Virtual Cloud Network) in OCI which is a private network 
      - contains a resource that creates a subnet within VCN by passing ID of the VCN
      - contains a resourece that creates internet gateway
      - contains a resource that assigns a public_IP to Instance private_IP
      - contains a resource that create route table
      
######   3. core instance.tf
      - contains a resource to create a compute instance with public ip
      
######    4.variables.tf
      -  file is used to declare and define input variables 
   
######    5. terrafrom.tfvars
      - file used to store input variable values
   
######    6. output.tf
      - to display public ip of the VM after running the configration files
#### 3. Steps to Create a Virtual Machine
      - terraform init
      - terraform apply

## NOTE
Any variable with value that contains (ORCALE_ACCOUNT) this values must be provided from orcale user

## limitation
I couldn't test it as I dont have account on OCI as it requires a credit card and I dont have one yet
