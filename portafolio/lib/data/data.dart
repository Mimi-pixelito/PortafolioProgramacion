class Project {
  final String title;
  final String description;

  Project({required this.title, required this.description});
}

class PortfolioData {
  // 1. Nombre y apellido 
  static const String fullName = 'Miranda Brito';
  static const String headline = 'Pueden llamarme Mimi, soy una estudiante de Ingeniería en proceso :)';
  
  // 2. Información de Perfil
  static const String profileImageUrl = 'assets/principal.jpg';
  static const String signatureLogoUrl = 'assets/baloo.jpg';

  // 3. Secciones "Sobre Mi" 
  static const String aboutTitle1 = '♡ Sobre Mí ♡';
  static const List<String> aboutContent1 = [
    'Tengo 19 años, casi 20 (cumplo el 2 de diciembre, jeje). Me gusta la ingeniería por la creatividad e ingenio que implica, es a veces complicado pero hay que encontrarle la vuelta.',
  ];

  static const String aboutTitle2 = '✮ ¿Qué Hago? ✮';
  static const List<String> aboutContent2 = [
    'Por ahora me dedico únicamente a estudiar, tengo un trabajo, pero no esta relacionado con mi carrera (trágicamente). Pero si me gustaría hacer proyectos personales relacionados con la programación y desarrollo de software.',
  ];

  static const String hobbiesTitle = '❁ Hobbies ❁';
  static const List<String> hobbiesContent = [
    'Disfruto mucho de leer en mi tiempo libre, o cada ocasión en la que pueda. Me gusta dibujar, ver documentales, series y películas. De series recomiendo: Better Call Saul, Breaking Bad y Daredevil 10/10. También me gusta mucho la música, soy fan del rock, del glam-rock y del pop-rock. Aunque también disfruto mucho de unas buenas llaneras.',
  ];

  static const String projectsTitle = '❈ Proyectos Realizados ❈';
  static List<Project> projects = [
    Project(
      title: 'Simulador de F1',
      description: 'Esto era una app hecha por C# para simular carreras de Fórmula 1, con diferentes pilotos y equipos, según los componentes que escogieras tenias diferentes posiciones.',
    ),
    Project(
      title: 'Libreria Virtual',
      description: 'Un sistema de gestión de libros para una librería virtual (tienda), permitiendo a los usuarios buscar, agregar y gestionar sus libros y sus ventas.',
    ),
    Project(
      title: 'Aerolínea Simple',
      description: 'Una aplicación de consola en Python que simula la gestión de una aerolínea, permitiendo a los usuarios reservar vuelos, gestionar pasajeros y ver itinerarios.',
    ),
  ];

  // 6. Información de Contacto para la pantalla de Firma
  static const String developerSignature = 'Miranda Brito Vargas - Estudiante de Ingeniería';
  static const String contactEmail = 'mbrito.8787@unimar.edu.ve';
  static const String contactPhone = '+58 424 8674405';
}