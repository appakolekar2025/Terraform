resource "azurerm_network_security_group" "NSG" {
  for_each            = var.nsgs
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  security_rule {

    name                       = each.value.nameA
    priority                   = each.value.priority
    direction                  = each.value.direction
    access                     = each.value.access
    protocol                   = each.value.protocol
    source_port_range          = each.value.source_port_range
    destination_port_range     = each.value.destination_port_range
    source_address_prefix      = each.value.source_address_prefix
    destination_address_prefix = each.value.destination_address_prefix


  }
}
resource "azurerm_network_interface_security_group_association" "nic_assoc" {
  network_interface_id      = "/subscriptions/d3cb2df5-eb78-459e-8970-5a0bc3d68909/resourceGroups/vikas1/providers/Microsoft.Network/networkInterfaces/nic1"
  network_security_group_id = "/subscriptions/d3cb2df5-eb78-459e-8970-5a0bc3d68909/resourceGroups/vikas1/providers/Microsoft.Network/networkSecurityGroups/nsg"
}
