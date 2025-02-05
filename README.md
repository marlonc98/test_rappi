# Prueba Técnica - Ingreso a Rappi

Este proyecto es una prueba técnica para el proceso de ingreso a la empresa **Rappi**. A continuación, se describen las características y la arquitectura de la aplicación.

---

## Arquitectura

El proyecto está diseñado para seguir una arquitectura limpia por capas, utilizando **inyección de dependencias** a través de un mecanismo llamado `injectionDependency`. Esta arquitectura asegura una alta flexibilidad y permite adaptar el comportamiento de la aplicación según el entorno de desarrollo.

### Flujo de la Aplicación

1. **Interfaz de Usuario (UI):**  
   Desde la UI se obtienen los casos de uso (Use Cases) necesarios para invocar los servicios requeridos.

2. **Casos de Uso (Use Cases):**  
   Los casos de uso gestionan la lógica del negocio y seleccionan el repositorio adecuado según el modo de desarrollo (por ejemplo, desarrollo local o producción).

3. **Repositorios:**  
   Los repositorios se encargan de acceder a los datos, ya sea desde un servicio remoto, una base de datos local, o simulaciones de datos para pruebas.

---

## Funcionalidades

- **Tema Oscuro y Claro:**  
  La aplicación permite alternar entre un tema oscuro y un tema claro, mejorando la experiencia del usuario según su preferencia.

- **Soporte Multilenguaje:**  
  La aplicación cuenta con una arquitectura preparada para soportar múltiples idiomas. Se utiliza la librería **shared_preferences** para almacenar la configuración de idioma seleccionada por el usuario. Esto permite recordar la preferencia entre sesiones y facilita la implementación de otros idiomas en el futuro sin necesidad de reconfigurar cada vez.  

---

## Librerías Externas

El proyecto utiliza las siguientes librerías externas para facilitar el desarrollo y la funcionalidad:

1. **[get_it: ^8.0.2](https://pub.dev/packages/get_it)**  
   Se utiliza para implementar inyección de dependencias, lo que permite separar la lógica y facilitar el acceso a servicios de manera controlada.  

2. **[provider: ^6.1.2](https://pub.dev/packages/provider)**  
   Actúa como gestor de estado de manera eficiente, reactiva y optimizada en la arquitectura de la aplicación.  

3. **[either_dart: ^1.0.0](https://pub.dev/packages/either_dart)**  
   Se usa para evitar el uso de `try/catch` al manejar errores. Permite parsear funciones de manera flexible, retornando un `Error Entity` en caso de error o el resultado esperado como respuesta positiva.

4. **[infinite_scroll_pagination: ^4.1.0](https://pub.dev/packages/infinite_scroll_pagination)**  
   Se utiliza para implementar paginación en la lista de peliculas al momento de hacer scroll. Esto evita cargar grandes cantidades de datos simultáneamente, lo que puede volver lenta la app y aumentar los costos de consumo de la API.  

5. **[http: ^1.2.2](https://pub.dev/packages/http)**  
   Se emplea para realizar llamadas HTTP y obtener información de las APIs utilizadas en la aplicación.  

6. **[shared_preferences: ^2.3.3](https://pub.dev/packages/shared_preferences)**  
   Se utiliza para almacenar la configuración de idioma seleccionada por el usuario. Esto es útil para admitir múltiples idiomas, permitiendo recordar la preferencia del usuario entre sesiones y facilitar el cambio o la inclusión de otros idiomas en el futuro.

7. **[provider: ^6.0.3](https://pub.dev/packages/provider)**  
   Se utiliza para la gestión del estado en la aplicación. Proporciona una forma eficiente y escalable de compartir y actualizar el estado entre los widgets.

8. **[freezed_annotation: ^2.0.0](https://pub.dev/packages/freezed_annotation)**  
   Se utiliza para generar clases inmutables y con soporte para JSON serialization/deserialization. Facilita la creación de modelos de datos robustos y seguros.

9. **[json_serializable: ^6.0.1](https://pub.dev/packages/json_serializable)**  
   Se utiliza junto con `freezed_annotation` para generar automáticamente el código necesario para la serialización y deserialización de JSON.

10. **[carousel_slider: ^4.0.0](https://pub.dev/packages/carousel_slider)**  
    Se utiliza para crear carruseles de imágenes y otros widgets. Proporciona una forma fácil de implementar carruseles con soporte para puntos indicadores y otras características.

11. **[get_it: ^7.2.0](https://pub.dev/packages/get_it)**  
    Se utiliza para la inyección de dependencias en la aplicación. Facilita la gestión de dependencias y la creación de instancias de clases.

12. **[either_dart: ^0.1.0](https://pub.dev/packages/either_dart)**  
    Se utiliza para manejar errores y resultados en la aplicación. Proporciona una forma funcional de representar valores que pueden ser de dos tipos diferentes (por ejemplo, éxito o error).


---

## Descargar la Aplicación

Si deseas probar la aplicación en Android, puedes descargar el archivo APK desde:  
`/app-release.apk`

---

## Consideraciones

Este proyecto está estructurado para ser fácilmente escalable y adaptable a las necesidades futuras. La separación de responsabilidades y la inyección de dependencias garantizan un código limpio y mantenible.

### Uso de Riverpod

Aunque no se utilizó en este proyecto debido al uso de `either_dart`, `riverpod` puede ser una excelente opción para la gestión del estado. Si se desea usar, puede ser implementado como una actualización entre el caso de uso y la interfaz de usuario.

### Fluro

Si se desea cambiar el sistema de navegación, `fluro` puede ser una opción. Solo se debe cambiar el sistema de enrutamiento anterior y actualizar las dependencias.

### Unit Testing

Por tiempo no se realizaron pruebas unitarias, pero si se desean agregar, se podrían incluir pruebas que verifiquen si los widgets se renderizan correctamente y que busquen al menos 2 películas.