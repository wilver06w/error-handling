void main() {
  init();
}

void init({
  bool haveCoffe = false,
}) {
  try {
    prepararCafe(
      haveCoffe: haveCoffe,
    );
  } on SinCafeException catch (e) {
    // Excepción específica
    print('${e.mensajeError()}');
    comprarMasCafe();
  } on Exception catch (e) {
    // Cualquier otra excepción
    print('Excepción desconocida: $e');
  } catch (e) {
    // No se especificó el tipo, maneja cualquier error
    print('Algo completamente inesperado: ${e.runtimeType}');
  }
}

void comprarMasCafe() {
  print('Se compró más café.');
  init(
    haveCoffe: true,
  );
}

void prepararCafe({
  bool haveCoffe = false,
}) {
  print('Preparando café...');
  if (haveCoffe) {
    print('Café preparado...');
  } else {
    throw SinCafeException();
  }
}

class SinCafeException implements Exception {
  String mensajeError() => '¡No queda café!';
}
