provider "azurerm" {
  features {}

  subscription_id = "a1c4dd57-c40f-4344-bcf4-7ad8622ee020"  # your subscription ID
}

resource "azurerm_resource_group" "rg" {
  name     = "npupgradl-1696818508486"  # resource group name
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "UpGrad-aks-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "upgradaks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
    Project     = "UpGrad"
  }
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
