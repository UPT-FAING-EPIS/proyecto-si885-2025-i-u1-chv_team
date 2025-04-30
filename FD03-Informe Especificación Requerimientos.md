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