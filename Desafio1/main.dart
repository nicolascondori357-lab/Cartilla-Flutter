class Alumno {
  final String nombre;
  final String apellido;
  final int edad;
  final List<double> notas;

  Alumno({
    required this.nombre,
    required this.apellido,
    required this.edad,
    required this.notas,
  });

  double calcularPromedio() {
    double suma = notas.reduce((a, b) => a + b);
    return suma / notas.length;
  }

  String estadoFinal() {
    double promedio = calcularPromedio();

    if (promedio >= 6) {
      return 'Aprobado';
    } else if (promedio >= 4) {
      return 'Recuperatorio';
    } else {
      return 'Desaprobado';
    }
  }

  @override
  String toString() {
    return '$nombre $apellido - ${estadoFinal()}';
  }
}

void main() {
  List<Alumno> alumnos = [
    Alumno(
      nombre: 'Nicolas',
      apellido: 'Condori',
      edad: 17,
      notas: [8.0, 9.0, 7.0],
    ),
    Alumno(
      nombre: 'Angel',
      apellido: 'Diaz',
      edad: 16,
      notas: [5.0, 6.0, 4.0],
    ),
    Alumno(
      nombre: 'Fabrizio',
      apellido: 'Andrada',
      edad: 17,
      notas: [3.0, 4.0, 2.0],
    ),
    Alumno(
      nombre: 'Jonatan',
      apellido: 'Guanuco',
      edad: 16,
      notas: [9.0, 10.0, 10.0],
    ),
    Alumno(
      nombre: 'Lautaro',
      apellido: 'Pavon',
      edad: 18,
      notas: [6.0, 7.0, 5.0],
    ),
  ];

  print('LISTA DE ALUMNOS');

  for (Alumno alumno in alumnos) {
    print(alumno);
    print('Promedio: ${alumno.calcularPromedio()}');
  }

  Alumno mejorAlumno = alumnos[0];

  for (Alumno alumno in alumnos) {
    if (alumno.calcularPromedio() >
        mejorAlumno.calcularPromedio()) {
      mejorAlumno = alumno;
    }
  }

  print('\nMEJOR PROMEDIO');
  print(mejorAlumno);
  print('Promedio: ${mejorAlumno.calcularPromedio()}');

  int aprobados = 0;
  int desaprobados = 0;

  for (Alumno alumno in alumnos) {
    if (alumno.estadoFinal() == 'Aprobado') {
      aprobados++;
    } else if (alumno.estadoFinal() == 'Desaprobado') {
      desaprobados++;
    }
  }

  print('\n===== RESULTADOS =====');
  print('Aprobados: $aprobados');
  print('Desaprobados: $desaprobados');
}