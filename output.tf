output "app_instance_public_ip" {
  value = aws_instance.app.public_ip
}

output "tools_instance_public_ip" {
  value = aws_instance.tools.public_ip
}

output "private_key_pem" {
  value     = tls_private_key.key.private_key_pem
  sensitive = true
}
