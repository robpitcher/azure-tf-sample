# AKS Terraform Demo
This branch follows Microsoft's quickstart for deploying an AKS cluster with Terraform. See the original guide [here](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-terraform?pivots=development-environment-azure-cli). Workflows have been disabled as this guide is intended to be run using Azure cli in a bash shell.

## Deploy in your environment
Ensure you have the pre-requisites setup as documented in the [guide](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-terraform?pivots=development-environment-azure-cli#before-you-begin).

### Run the Terraform deployment
```shell
cd src
terraform init -upgrade
terraform plan -out main.tfplan
terraform apply main.tfplan
```

### Setup Kubectl config
Note: If you see `<< EOT` at the beginning and `EOT` at the end of the `./azurek8s` file, be sure to remove it from the file before exporting to `KUBECONFIG`:
```shell
resource_group_name=$(terraform output -raw resource_group_name)
az aks list --resource-group $resource_group_name --query "[].{\"K8s cluster name\":name}" --output table
echo "$(terraform output kube_config)" > ./azurek8s
export KUBECONFIG=./azurek8s
```