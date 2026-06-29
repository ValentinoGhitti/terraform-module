# Módulo Bit Config

Mi primer módulo de Terraform. Crea archivos de configuración reutilizables.

## Qué hace
Este módulo representa el concepto de un "Bit" — una automatización reutilizable
que se puede instanciar múltiples veces con distintos inputs.

## Inputs
| Variable | Descripción | Tipo |
|----------|-------------|------|
| nombre | Nombre del bit | string |
| descripcion | Qué hace este bit | string |

## Outputs
| Output | Descripción |
|--------|-------------|
| archivo_creado | Ruta del archivo generado |

## Uso
