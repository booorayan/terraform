# Using Terraform to provision infrastructure on Vultr
Implementing IaC using Terraform to provision a virtual machine with block storage attached to the instance. The configuration also creates a firewall group and rule and attaches the rule to the created virtual machine on Vultr.

We provide the vultr api key and AWS access keys through the terminal with the commands below:
 
`export TF_VAR_vultr_api_key=<your-vultr-api-key>`

`export AWS_SECRET_ACCESS_KEY=<vultr-object-storage-secret-access-key>`

`export AWS_ACCESS_KEY=<vultr-object-storage-access-key>`

Follow the steps below to get the api key on vultr:
1. Navigate to the customer portal
2. Go to Account > API
3. Click on the "Enable API" button
4. Copy the API Key
5. Add the server ip to access control

To get the access and secret access keys for object storage:
1. Navigate to the customer portal
2. Go to Products > Objects
3. Click on the object storage of interest
4. Copy the secret access key and the access key


## Resources provisioned 
1. VM instance
2. Block storage
3. Object storage
4. Firewall group and rules

## Todo:
- [x] Add remote backend to store the tfstate file
- [x] Add multiple firewall rules to allow access on multiple ports
- [x] Print out the public ip address

