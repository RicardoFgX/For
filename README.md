# Proyecto de Formulario JSP y Servlet

Este proyecto implementa un formulario web en un archivo JSP y presenta dos soluciones para su procesamiento:

## Solución 1: Tratamiento Directo en un Archivo JSP

En esta solución, el tratamiento de los datos del formulario se realiza directamente en el archivo JSP. Los datos del formulario se procesan en el mismo archivo JSP donde se encuentra el formulario.

### Archivos Relevantes

- `formulario1.jsp`: Contiene el formulario HTML y la lógica de procesamiento directo en el archivo JSP.

### Cómo Funciona

1. El usuario accede a `formulario1.jsp` y completa el formulario.

2. Cuando el usuario hace clic en "Enviar", los datos se procesan directamente en `formulario1.jsp`.

3. `formulario1.jsp` realiza el procesamiento de datos y muestra los resultados en la misma página.

### Ejecución

1. Asegúrate de tener un servidor web o contenedor de servlets en ejecución.

2. Despliega la aplicación en tu servidor web.

3. Accede al formulario en tu navegador web visitando la URL: `http://localhost:8080/FormularioJSP/formulario1.jsp`.

4. Completa el formulario y haz clic en "Enviar" para ver los resultados en la misma página.

## Solución 2: Tratamiento en un Servlet y Redirección a un Archivo JSP

En esta solución, el tratamiento de los datos del formulario se realiza en un Servlet. El Servlet procesa los datos y luego redirige al usuario a un archivo JSP separado para mostrar los resultados.

### Archivos Relevantes

- `FormularioServlet.java`: El Servlet que procesa los datos del formulario.
- `formularioResultado.jsp`: La página JSP que muestra los resultados.

### Cómo Funciona

1. El usuario accede a `formulario2.jsp` y completa el formulario.

2. Cuando el usuario hace clic en "Enviar", los datos se envían al Servlet `FormularioServlet` para su procesamiento.

3. `FormularioServlet` procesa los datos, realiza cualquier lógica necesaria y luego redirige al usuario a `formularioResultado.jsp`, donde se muestran los resultados.

### Ejecución

1. Asegúrate de tener un servidor web o contenedor de servlets en ejecución.

2. Despliega la aplicación en tu servidor web.

3. Accede al formulario en tu navegador web visitando la URL: `http://localhost:8080/FormularioJSP/formulario2.jsp` (ajusta la URL según tu configuración).

4. Completa el formulario y haz clic en "Enviar" para ver los resultados en `formularioResultado.jsp`.

