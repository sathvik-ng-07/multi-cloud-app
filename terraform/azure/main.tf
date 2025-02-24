provider "azurerm" {
  features = {}
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "myAKSCluster"
  location            = "East US"
  resource_group_name = "myResourceGroup"
  dns_prefix          = "myaks"
  
  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }
  
  identity {
    type = "SystemAssigned"
  }
}
