output "client_certificate" {
  value     = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  depends_on = [azurerm_kubernetes_cluster.aks]
  value      = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive  = true
}