# Terraform Module for Azure Resource Group
This module can be used to create a Resource Group in Azure. It automatically add the `CreatedOn` tag to the resource group. 


## Example Usage
```tf
module "naming" {
  source              = "github.com/sameeraman/terraform-azurerm-naming"
  company-prefix      = "fbk"
  region-prefix       = "use1"
  environment-prefix  = "prd"
}

module "rg4" {
  source     = "github.com/sameeraman/terraform-azurerm-resource-group"

  name       = join("-", [module.naming.resource_group.name,"002"])
  location   = "East US"
  tags       = { CostCentre = "1001", Owner = "John Smith" }
}
```