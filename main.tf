terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Primera instancia del módulo
module "bit_deploy" {
  source = "./modules/bit-config"
  nombre = "deploy-app"
  descripcion = "Automatizacion que deployea la aplicacion en produccion"
}

# Segunda instancia del MISMO módulo, distintos inputs
module "bit_backup" {
  source = "./modules/bit-config"
  nombre = "backup-db"
  descripcion = "Automatizacion que hace backup de la base de datos cada noche"
}

# Mostramos los outputs de cada instancia
output "bit_deploy_archivo" {
  value = module.bit_deploy.archivo_creado
}

output "bit_backup_archivo" {
  value = module.bit_backup.archivo_creado
}