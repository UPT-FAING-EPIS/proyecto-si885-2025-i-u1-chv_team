<center>

[comment]: <img src="./media/media/image1.png" style="width:1.088in;height:1.46256in" alt="escudo.png" />

![./media/media/image1.png](./media/logo-upt.png)

**UNIVERSIDAD PRIVADA DE TACNA**

**FACULTAD DE INGENIERIA**

**Escuela Profesional de Ingeniería de Sistemas**

**Proyecto *Sistema de Análisis del Perfil Profesional de los Egresados de la EPIS de la UPT en LinkedIn***

Curso: **Inteligencia de Negocios**

Docente: **Ing.Patrick José Cuadros Quiroga**

## Integrantes:

  **Villanueva Mamani, Royser Alonsso (2021071090)** 
  **Hinojosa Mucho, Christian Dennis (2019065161)** 
  **Chite Quispe, Brian Danilo (2021070015)** 

**Tacna – Perú**

***2025***


</center>
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

|CONTROL DE VERSIONES||||||
| :-: | :- | :- | :- | :- | :- |
|Versión|Hecha por|Revisada por|Aprobada por|Fecha|Motivo|
|1\.0|MPV|ELV|ARV|10/10/2020|Versión Original|

<div align="right">

# Sistema de Análisis del Perfil Profesional de los Egresados de la EPIS de la UPT en LinkedIn

## Informe de Factibilidad

**Versión 1.0**

</div>

# ÍNDICE GENERAL

1. **Descripción del Proyecto** ................................... 3  
2. **Riesgos** ........................................................ 3  
3. **Análisis de la Situación Actual** .............................. 3  
4. **Estudio de Factibilidad** ..................................... 3  
   4.1. **Factibilidad Técnica** .................................. 4  
   4.2. **Factibilidad Económica** ................................ 4  
   4.3. **Factibilidad Operativa** ................................ 4  
   4.4. **Factibilidad Legal** ..................................... 4  
   4.5. **Factibilidad Social** .................................... 5  
   4.6. **Factibilidad Ambiental** ................................. 5  
5. **Análisis Financiero** ......................................... 5  
6. **Conclusiones** ................................................. 5
                                                
# Informe de Factibilidad

## 1. Descripción del Proyecto

### 1.1 Nombre del Proyecto
Sistema de Análisis del Perfil Profesional de los Egresados de la EPIS de la UPT en LinkedIn

### 1.2 Duración del Proyecto
El tiempo estimado del proyecto será de 3 meses, iniciando el 18 de marzo de 2025, culminando el día 28 de junio de 2025.

### 1.3 Descripción 
El propósito de este proyecto es analizar el perfil profesional de los egresados de la Universidad Privada de Tacna (UPT) de la Escuela Profesional de Ingeniería de Sistemas en LinkedIn para identificar tendencias laborales, sectores predominantes y oportunidades de mejora en la formación académica.

### 1.4 Objetivos

#### 1.4.1 Objetivo General
Evaluar la viabilidad del sistema de análisis del perfil profesional de los egresados de la EPIS de la UPT en LinkedIn, considerando aspectos técnicos, operativos, económicos y legales, con el fin de determinar su implementación y utilidad para la toma de decisiones académicas y laborales.

#### 1.4.2 Objetivos Específicos
- Evaluar herramientas y metodologías necesarias para la recopilación y procesamiento de datos de LinkedIn.
- Identificar recursos humanos y tecnológicos requeridos para llevar a cabo el análisis.

## 2. Riesgos

Los riesgos de este proyecto se verán marcados por los siguientes puntos:
- En primer lugar, el acceso limitado a los datos. LinkedIn tiene restricciones en la extracción de datos, lo que puede dificultar la recopilación de información masiva. Además el que se nos proporcione información acerca de los egresados desde la Universidad puede ser restringido y privado por lo cual acceder a ello será un proceso largo.
- En segundo lugar, la veracidad de los datos. En algunos casos, los perfiles pueden contener información incompleta, desactualizada o inexacta, lo que afectará el análisis del proyecto.

## 3. Análisis de la Situación Actual

### 3.1 Planteamiento del Problema
Existe una falta de información estructurada sobre la trayectoria laboral de los egresados de la UPT, lo que dificulta evaluar su empleabilidad, sectores laborales predominantes, habilidades más demandadas y ubicación geográfica. Esto limita la capacidad de la universidad para ajustar su oferta académica y mejorar la orientación profesional de los estudiantes.

### 3.2 Consideraciones de Hardware y Software

#### Hardware:
- Computadora de escritorio o laptop con las siguientes especificaciones:
  - Procesador: Intel Core i7/i9 o AMD Ryzen 7/9
  - Memoria RAM: Mínimo 8GB (recomendado 16GB para grandes volúmenes de datos)
  - Almacenamiento: SSD de al menos 512GB para rapidez en procesamiento
- Servidor en la nube como Azure, AWS o Google Cloud.

#### Software:
- Python 3.13 o versión actual
- Librerías de scraping (Selenium, BeautifulSoup): Para extraer información pública de LinkedIn.
- Visual Studio Code 1.98 o versión más actual
- SQL Server o versión actual
- Power BI versión actual

## 4. Estudio de Factibilidad

### 4.1 Factibilidad Técnica
## 4.1 Factibilidad Técnica

El estudio de viabilidad técnica tiene como objetivo evaluar la tecnología actual disponible y su aplicabilidad para el desarrollo e implementación del proyecto. A continuación, se presenta una evaluación detallada de los recursos tecnológicos que se utilizarán:

### Hardware:
- **Computadora de escritorio o laptop** con las siguientes capacidades:
  - **Procesador:** Intel Core i7/i9 o AMD Ryzen 7/9
  - **Memoria RAM:** Mínimo 8GB (recomendado 16GB para grandes volúmenes de datos)
  - **Almacenamiento:** SSD de al menos 512GB para rapidez en procesamiento
- **Servidor en la nube** como Azure, AWS o Google Cloud.

### Software:
- **Python 3.13** o versión actual.
- **Python con librerías de scraping** (Selenium, BeautifulSoup): Para extraer información pública de LinkedIn (considerando sus restricciones).
- **Visual Studio Code 1.98** o la versión más actual.
- **SQL Server** versión actual.
- **Power BI** versión actual.
### 4.1.1 Provisión de Infraestructura mediante Terraform

Para la automatización y despliegue de la infraestructura necesaria del sistema, se utilizará *Terraform* como herramienta principal de IaC (Infrastructure as Code). Terraform permitirá crear y gestionar:

- Base de datos *Azure SQL*
- Almacenamiento *Azure Blob* para respaldos

Esto garantiza un despliegue controlado, reproducible y escalable, facilitando la gestión de la infraestructura en ambientes de nube pública.

---

### 4.1.2 Estimación de Costos de Infraestructura en Azure

| Recurso desplegado con Terraform     | Proveedor | Precio mensual aprox. |
|-------------------------------------|-----------|------------------------|
| Base de datos SQL (Azure Basic)     | Azure     | S/. 18.75              |
| Blob Storage (50GB)                 | Azure     | S/. 7.50               |
| *Total mensual estimado*          |           | *S/. 26.25*          |

El costo mensual estimado es de aproximadamente S/. 26.25, incluyendo la base de datos SQL y el almacenamiento de respaldos. Esto permitirá alojar la información de egresados extraída de LinkedIn y preparar reportes analíticos accesibles vía Power BI.
### 4.2 Factibilidad Económica

#### 4.2.1 Costos Generales

| Accesorios y Materiales        | Costos mensuales | Durante 3 meses |
|---------------------------------|------------------|-----------------|
| Papelería                       | S/. 14.00        | S/. 42.00       |
| Lapiceros                       | S/. 4.00         | S/. 12.00       |
| Cartuchos de Impresora          | S/. 60.00        | S/. 180.00      |
| Computadora de Oficina          | S/. 1200.00      | S/. 3600.00     |
| **Total**                       | **S/. 1278.00**  | **S/. 3834.00** |

#### 4.2.2 Costos Operativos Durante el Desarrollo

| Servicios                       | Costos mensuales | Durante 3 meses |
|----------------------------------|------------------|-----------------|
| Internet                        | S/. 80.00        | S/. 240.00      |
| Electricidad                     | S/. 70.00        | S/. 210.00      |
| Agua                             | S/. 60.00        | S/. 180.00      |
| **Total**                        | **S/. 210.00**   | **S/. 630.00**  |

#### 4.2.3 Costos del Ambiente

| Descripción                      | Costo Mensual    | Durante 3 meses |
|-----------------------------------|------------------|-----------------|
| Base de datos para perfiles de egresados                         | S/. 18.75        | S/. 56.25      |
| Almacenamiento de resplados                       | S/. 7.50        | S/22.50       |
| Conexion dedicada para la extraccion/actualizacion            | S/. 15.00        | S/. 45.00       |
| **Total**                         | **S/. 41.25**   | **S/. 123.75**  |

#### 4.2.4 Costos de Personal

| Rol del Personal                 | Mensualmente     | Durante 3 meses |
|-----------------------------------|------------------|-----------------|
| Jefe del Proyecto                 | S/. 800.00       | S/. 2400.00     |
| Programador                       | S/. 800.00       | S/. 2400.00     |
| Analista de Datos                 | S/. 800.00       | S/. 2400.00     |
| **Total**                         | **S/. 2400.00**  | **S/. 7200.00** |

#### 4.2.5 Costos Totales del Desarrollo del Sistema

| Tipos de Costos                   | Costos Mensuales | Costos Totales  |
|------------------------------------|------------------|-----------------|
| General                           | S/. 1,278.00     | S/. 3,834.00    |
| Operativos                        | S/. 210.00       | S/. 630.00      |
| Ambientales                        | S/. 100.00       | S/. 300.00      |
| Personal                          | S/. 2400.00      | S/. 7200.00     |
| **Total**                          | **S/. 3,988.00** | **S/. 11,964.00** |

## 4.3 Factibilidad Operativa

### Beneficios del producto:
El sistema de análisis del perfil profesional de los egresados de la EPIS de la UPT en LinkedIn proporcionará diversas ventajas para la universidad, los egresados y las empresas:

- **Seguimiento eficiente de egresados:** Permitirá recopilar y analizar información sobre la trayectoria profesional de los egresados en LinkedIn, facilitando estudios de empleabilidad y la mejora de planes curriculares.
- **Optimización de la toma de decisiones:** Los datos recopilados servirán para evaluar la pertinencia de la formación académica y mejorar la oferta educativa basada en tendencias del mercado laboral.
- **Facilitación de conexiones laborales:** Se podrán identificar oportunidades de networking entre egresados, estudiantes y empresas interesadas en talento proveniente de la EPIS de la UPT.

## 4.4 Factibilidad Legal

El sistema de análisis de perfiles en LinkedIn deberá cumplir con la **Ley N.º 29733 de Protección de Datos Personales** y las políticas de privacidad de la plataforma. Se obtendrá el consentimiento de los egresados en caso de uso de datos personales más allá de lo disponible públicamente en LinkedIn. Se respetarán las normativas de acceso y uso de datos de LinkedIn, asegurando que la recolección y análisis sean éticos y legales. Se implementarán medidas de **ciberseguridad** para resguardar la información recolectada y evitar vulneraciones de privacidad.

## 4.5 Factibilidad Social

Este proyecto tendrá un impacto positivo en la comunidad universitaria al brindar información clave sobre la inserción laboral de los egresados, permitiendo que la universidad adapte sus programas a las necesidades del mercado. Fortalecerá la identidad y prestigio de la EPIS de la UPT, al mostrar estadísticas sobre el éxito profesional de sus egresados y creará una comunidad de apoyo entre egresados, fomentando el networking y el intercambio de oportunidades laborales.

## 4.6 Factibilidad Ambiental

El sistema de análisis de perfiles profesionales tendrá un impacto ambiental positivo al reducir el uso de documentos físicos, ya que toda la información se gestionará digitalmente. Se optimizará el consumo de recursos tecnológicos, priorizando herramientas eficientes y de bajo consumo energético, y se fomentará el acceso remoto, evitando desplazamientos innecesarios para la recolección de datos y promoviendo un enfoque sustentable.

## 5. Análisis Financiero

### 5.1 Justificación de la Inversión

La inversión en el sistema de análisis del perfil profesional de los egresados de la EPIS de la UPT en LinkedIn está justificada debido a los múltiples beneficios que ofrecerá, tanto tangibles como intangibles, a la universidad. Estos beneficios no sólo permitirán una mejor evaluación de la inserción laboral de los egresados, sino que también fortalecerán la planificación académica, la vinculación con el sector empresarial y el prestigio institucional de la EPIS de la UPT.

#### 5.1.1 Beneficios del Proyecto

**Cuadro de Egresos:**
Gastos operacionales como parte del funcionamiento del software en la puesta en producción:

| Gasto                        | PU        | Cantidad | Subtotal  |
|------------------------------|-----------|----------|-----------|
| Infraestructura cloud         | S/ 3,000  | 1        | S/ 3,000  |
| Especialista en Análisis de datos | S/ 5,000  | 1        | S/ 5,000  |
| Desarrollador Full Stack      | S/ 4,500  | 1        | S/ 4,500  |
| Mantenimiento de hardware y software | S/ 2,500  | 0.5      | S/ 2,500  |
| **Total de egresos**          |           |          | **S/ 13,750** |
| **Total anual (12 meses)**   |           |          | **S/ 165,000** |

**Cuadro de Ingresos anual estimado del proyecto:**

| Concepto                              | Monto      |
|---------------------------------------|------------|
| Mejora en la empleabilidad de egresados (15%) | S/ 120,000 |
| Optimización de la toma de decisiones (20%) | S/ 80,000  |
| Reducción en costos de investigación laboral (30%) | S/ 90,000  |
| Mayor precisión en datos de egresados (10%) | S/ 20,000  |
| **Ingreso total anual**               | **S/ 310,000** |

**Presupuesto del proyecto**: S/ 54,000

#### Beneficios tangibles:
- Reducción del tiempo en la recopilación y análisis de datos en un 40%.
- Optimización del uso de recursos para la investigación académica y laboral en un 30%.
- Acceso a información actualizada sobre egresados en un 95% de los casos.
- Disminución del uso de encuestas físicas en un 50%, reduciendo costos en papel y logística.
- Mejora en la planeación y actualización curricular en función de las tendencias laborales en un 25%.
- Reducción de costos operativos en estudios de egresados en un 20%.

#### Beneficios intangibles:
- Mejor comprensión de la inserción laboral de los egresados.
- Aumento en la confiabilidad de los datos para la toma de decisiones académicas y estratégicas.
- Mayor facilidad para establecer convenios con empresas basados en datos reales del mercado laboral.
- Fortalecimiento de la reputación institucional al contar con estudios detallados sobre egresados.
- Adaptabilidad a los cambios en el mercado laboral, permitiendo una actualización oportuna de la malla curricular.
- Cumplimiento de normativas y requisitos de acreditación con información actualizada y verificable.

### 5.1.2 Criterios de Inversión

#### 5.1.2.1 Relación Beneficio/Costo (B/C)

| DETALLE                | INGRESOS  | EGRESOS  | FLUJO DE CAJA |
|------------------------|-----------|----------|---------------|
| **INVERSIÓN INICIAL**  |           |  | -S/ 11,964              |
| **MES 1**              | S/ 7,000  | S/ 5,500  | S/ 1,500      |
| **MES 2**              | S/ 14,000 | S/ 9,000  | S/ 5,000      |
| **MES 3**              | S/ 21,000 | S/ 12,500 | S/ 8,500      |
| **TASA DE DESCUENTO**  | 8%        |          |               |

- **VAN (Valor Actual Neto)**: S/ 1,820
- **TIR (Tasa Interna de Retorno)**: 15%
- **B/C (Relación Beneficio/Costo)**: 1.15
- **TIEMPO DE RECUPERACIÓN**: Tercer Mes

#### 5.1.2.2 Valor Actual Neto (VAN)

- **VAN**: S/ 1,820
- **TIR**: 15%
- **B/C**: 1.15
- **TIEMPO DE RECUPERACIÓN**: Tercer Mes

Dado que el VAN es positivo, se concluye que los ingresos generados por el proyecto superarán los costos y la inversión inicial. Esto implica que no solo se recuperará la inversión, sino que también se obtendrá un beneficio adicional.

#### 5.1.2.3 Tasa Interna de Retorno (TIR)

- **VAN**: S/ 1,820
- **TIR**: 15%
- **B/C**: 1.15
- **TIEMPO DE RECUPERACIÓN**: Tercer Mes

La TIR del 15% indica que la rentabilidad del proyecto es superior a la tasa de descuento establecida del 8%, lo que confirma la viabilidad del sistema de análisis del perfil profesional de los egresados de la EPIS de la UPT en LinkedIn.

## 6. Conclusiones

- **Factibilidad Técnica:** El sistema es viable tecnológicamente, utilizando hardware y software adecuados, como plataformas de análisis de datos (Python, R) y herramientas de web scraping (LinkedIn).
- **Factibilidad Económica:** Los costos de desarrollo y operación son razonables y ajustados al presupuesto, sin necesidad de grandes inversiones adicionales en infraestructura.
- **Factibilidad Operativa:** El sistema optimiza el análisis del perfil profesional de los egresados, mejorando la toma de decisiones y la relación con los egresados.
- **Factibilidad Legal:** El proyecto cumple con la Ley de protección de datos personales y las regulaciones de privacidad, garantizando el consentimiento para el uso de datos de LinkedIn.
- **Factibilidad Social:** Contribuye a la relación universidad-egresados, proporcionando información valiosa sobre inserción laboral y mejorando la comunidad académica.
- **Factibilidad Ambiental:** Reduce el uso de documentos físicos y optimiza los procesos de análisis, disminuyendo el impacto ambiental.

**Conclusión:** El proyecto es viable en todos los aspectos clave, ofreciendo beneficios tanto para la universidad como para sus egresados.









