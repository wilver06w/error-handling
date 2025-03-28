void main() {
  try {
    prepararCafe();
  } on SinCafeException {
    // Excepción específica
    comprarMasCafe();
  } on Exception catch (e) {
    // Cualquier otra excepción
    print('Excepción desconocida: $e');
  } catch (e) {
    // No se especificó el tipo, maneja cualquier error
    print('Algo completamente inesperado: $e');
  } finally {
    print('¡Terminó la preparación del café!');
  }
}

void comprarMasCafe() {
  print('Se compró más café.');
}

void prepararCafe() {
  print('Preparando café...');
  throw SinCafeException();
}

class SinCafeException implements Exception {
  String mensajeError() => '¡No queda café!';
}
