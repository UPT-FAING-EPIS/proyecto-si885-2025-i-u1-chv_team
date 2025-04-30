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