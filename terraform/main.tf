provider "azurerm" {
  features {}
}

# Declare the docker_password variable
variable "docker_password" {
  description = "Password for Docker registry"
  type        = string
  sensitive   = true  # Sensitive to avoid logging
}



# Resource Group
resource "azurerm_resource_group" "jdm-api-rg" {
  name     = "hello-api-rg"
  location = "East Us"
}

# Container Group
resource "azurerm_container_group" "hello_api" {
  name                = "hello-api-${random_id.suffix.hex}"
  location            = azurerm_resource_group.jdm-api-rg.location
  resource_group_name = azurerm_resource_group.jdm-api-rg.name
  os_type             = "Linux"

  container {
    name   = "hello-api"
    image  = "jdm0521/hello-api:latest"
    cpu    = "0.5"
    memory = "1.0"

    ports {
      port     = 5000
      protocol = "TCP"
    }
 
  }

  ip_address_type = "Public"
  dns_name_label  = lower("helloapi${random_id.suffix.hex}")
}

# Random ID for DNS name suffix
resource "random_id" "suffix" {
  byte_length = 3
}


