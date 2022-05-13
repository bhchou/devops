# devops
---
Files for devops use.

### OCI-Infra
TF Files for Terraform that creates tiny almost-free kubernets cluster on Oracle Cloud(ARM shape, 2 work nodes)

Before use, you should have three env variables set:
```
export TF_VAR_compartment_id=<Compartment OCID for cluster>
export TF_VAR_region=<region>
export TF_VAR_ssh_public_key=<SSH public key for maintenance>
```
Note:
1. The created SSH key should be no password or there are errors encoutered while running `terraform apply`
2. Use `oci ce node-pool-options get --node-pool-option-id all` to navigate available image id for nodes. It seems only Oracle Linux is supported (not sure)
3. Check the number of domains of the chosen region for Oracle Cloud from 
   `https://docs.oracle.com/en-us/iaas/Content/General/Concepts/regions.htm`

The instruction comes from 
[Free Oracle Cloud Kubernetes Cluster With Terraform] (https://arnoldgalovics.com/oracle-cloud-kubernetes-terraform/)



