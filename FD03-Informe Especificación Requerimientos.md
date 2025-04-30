📑 Informe FD03 - Historias de Usuario y Criterios de Aceptación

## 📊 Historias de Usuario (Formato COMO...QUIERO...PARA...)

### HU-01: Registro de Egresados
```markdown
**COMO** administrador  
**QUIERO** registrar nuevos egresados manualmente  
**PARA** mantener actualizada la base de datos  

**Criterios de Aceptación:**
1. Validar DNI único (8 dígitos)
2. Campos obligatorios: Nombre, DNI, Carrera, Año de egreso
3. Notificación de éxito/error al guardar

**Escenario de Prueba:**  
```gherkin
DADO que el admin completa el formulario  
CUANDO hace clic en "Guardar"  
ENTONCES el sistema valida los campos y muestra "Registro exitoso"

### HU-02: Búsqueda Avanzada
**COMO** investigador  
**QUIERO** filtrar egresados por carrera y año  
**PARA** generar reportes segmentados  

**Criterios de Aceptación:**
1. Filtros combinables (carrera + año + ubicación)
2. Resultados en <3 segundos
3. Exportar a CSV/Excel

**Escenario de Prueba:**  
```gherkin
DADO que selecciono "Ingeniería de Sistemas" y "2023"  
CUANDO aplico los filtros  
ENTONCES veo 15 registros y el botón "Exportar" 

** HU-03: Eliminación de Egresados
**COMO** administrador
**QUIERO** eliminar egresados del sistema
**PARA** depurar la base de datos

*Criterios de Aceptación:*
**COMO** previa antes de eliminar
**QUIERO** Eliminación lógica (no física)
**PARA** Registro de la acción

Escenario de Prueba:
DADO que selecciono un egresado  
CUANDO confirmo la eliminación  
ENTONCES el egresado ya no aparece en la lista

HU-04: Edición de Información
COMO administrador
QUIERO editar los datos de un egresado
PARA corregir errores o actualizar la información

Criterios de Aceptación:
Modificación limitada a campos específicos
Guardado con confirmación
Registro de la modificación en auditoría

Escenario de Prueba:
DADO que ingreso a un registro de egresado  
CUANDO modifico el campo "correo" y guardo  
ENTONCES el cambio se aplica y se registra


HU-05: Carga de datos desde archivos
COMO administrador
QUIERO importar egresados desde un archivo CSV
PARA agilizar el registro masivo
Criterios de Aceptación:
Validación del formato del archivo
Mostrar resumen antes de importar
Registrar errores por fila

Escenario de Prueba:
DADO que selecciono un archivo CSV válido
CUANDO presiono "Cargar"
ENTONCES el sistema importa los registros correctamente

HU-06: Extracción manual de información de LinkedIn
COMO analista
QUIERO copiar información de LinkedIn
PARA complementar los perfiles de los egresados
Criterios de Aceptación:
Campo editable para pegar datos
Guardar los cambios como notas adicionales
Visibilidad para administradores
Escenario de Prueba:
DADO que tengo el perfil de LinkedIn abierto
CUANDO copio el resumen y lo pego en el campo de notas
ENTONCES el sistema guarda esa información

HU-07: Generación de reportes
COMO usuario
QUIERO generar reportes por carrera y año
PARA analizar la distribución de egresados
Criterios de Aceptación:
Selección de filtros antes de generar
Reporte en PDF o Excel
Diseño legible y exportable
Escenario de Prueba:
DADO que selecciono "Contabilidad" y "2022"
CUANDO presiono "Generar Reporte"
ENTONCES se descarga un archivo con los datos filtrados

HU-08: Visualización gráfica de datos
COMO directivo
QUIERO ver gráficos de egresados por facultad y año
PARA tomar decisiones informadas
Criterios de Aceptación:
Gráficos de barras y pasteles
Actualización dinámica con filtros
Exportar como imagen
Escenario de Prueba:
DADO que elijo "Ingeniería" y "2021"
CUANDO aplico los filtros
ENTONCES se muestra un gráfico de distribución por carrera

HU-09: Exportación de reportes
COMO usuario
QUIERO exportar los reportes generados
PARA compartirlos o archivarlos
Criterios de Aceptación:
Opciones PDF y Excel
Nombre de archivo personalizado
Descargar sin errores
Escenario de Prueba:
DADO que tengo un reporte generado
CUANDO presiono "Exportar como PDF"
ENTONCES el archivo se descarga correctamente