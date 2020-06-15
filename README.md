# Addition of OMS Products to deployment
This Terraform will add both "AzureDataFactory Analytics" and "Keyvault Analytics" to an azure deployment.

## Development/pipelines

2 run environments to allow toggling of the terraform backend:
* local
* pipeline

## Variables

|Variable|Description|
|-|-|
|`resource_group_name`|Deployment resource group|
|`oms_name`|OMS instance name|
|`oms_resource_group_name`|resource group for the OMS instance|

## Sample usage


```terraform
cd local
terraform plan -var-file="../dev/config.tfvars" -out=tf.tfplan
terraform apply tf.tfplan

```