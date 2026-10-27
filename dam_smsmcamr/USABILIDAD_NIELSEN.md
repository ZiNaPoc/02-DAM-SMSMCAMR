# Evaluación Heurística de Jakob Nielsen

1. Visibilidad del estado del sistema: 
   La aplicación utiliza un `FutureBuilder` junto con un indicador de carga visual (`CircularProgressIndicator`) que se muestra mientras se consumen las recetas desde la API de DummyJSON, esto hace que el usuario sepa que la app esta cargando y no se congeló.

2. Relación entre el sistema y el mundo real: 
   El catálogo digital emplea fotografías reales de los alimentos y nombres claros de los platillos ancestrales. Además, el botón flotante utiliza el ícono estándar de un mapa, el cual es universalmente reconocible por cualquier persona en el entorno digital así como el icono del corazon para favoritos.

3. Control y libertad del usuario: 
   Gracias a la barra de navegación inferior (`BottomNavigationBar`), el usuario puede alternar e ir de una pestaña a otra libremente (Home, Favoritos, Acerca de) en cualquier momento sin quedarse atrapado en ninguna pantalla sin salida, si el usuario toca una pestaña por error, puede volver con un solo clic.

4. Consistencia y estándares: 
   La aplicación sigue estrictamente las guías de diseño de Material Design mediante el uso de componentes estándar de Flutter como `Scaffold`, `BottomNavigationBar`, `Card` y `ListView`. Se comporta exactamente igual que otras aplicaciones móviles del mercado.Todas las pantallas comparten la misma barra azul superior, la misma paleta de colores y los mismos márgenes (padding).

5. Prevención de errores: 
   El botón flotante (FAB) solo dispara una acción informativa y segura (un `Snackbar` que avisa que el mapa se está abriendo). Al no realizar acciones destructivas ni definitivas, se minimiza el riesgo de que el usuario cometa un error operativo.

6. Reconocimiento antes que recuerdo: 
   El componente visual reutilizable de la receta muestra la fotografía a la izquierda y el nombre a la derecha. Esto permite que el usuario reconozca visualmente el platillo de forma inmediata sin tener que leer o recordar textos largos. La barra de navegación inferior mantiene visibles las tres secciones con ícono y texto.

7. Flexibilidad y eficiencia de uso: 
   La pantalla de inicio implementa una lista deslizable (`ListView`) optimizada que permite realizar un scroll vertical rápido y fluido, facilitando la navegación tanto para usuarios nuevos como experimentados.

8. Diseño estético y minimalista:
   La aplicación mantiene una interfaz limpia y libre de elementos innecesarios o distractores, mostrando únicamente lo esencial: la foto, el nombre del platillo y un acceso a los detalles. No hay información saturada ni elementos decorativos innecesarios, hay buen espacio en blanco y la jerarquía visual es clara.

9. Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de errores: 
   El flujo del `FutureBuilder` controla los estados de error de la conexión con la API de DummyJSON. Si la petición falla, se le muestra un mensaje claro en pantalla al usuario en lugar de congelar la aplicación o lanzar un cierre inesperado.

10. Ayuda y documentación:
    La aplicación cuenta con una sección dedicada llamada "Acerca de:", donde se explícitamente a los 8 integrantes que la desarrollaron.
