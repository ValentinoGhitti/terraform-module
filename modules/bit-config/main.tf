resource "local_file" "config" {
  filename = "${path.module}/output/${var.nombre}.txt"
  content  = <<-EOT
    Bit: ${var.nombre}
    Descripcion: ${var.descripcion}
    Creado por: Terraform
  EOT
}