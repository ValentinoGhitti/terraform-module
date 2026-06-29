output "archivo_creado" {
  value = local_file.config.filename
  description = "Ruta del archivo que creo el modulo"
}