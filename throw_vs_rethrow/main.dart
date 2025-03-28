void doSomething() {
  try {
    dynamic foo = true;
    print(foo++); // Error en tiempo de ejecución
  } catch (e, stacktrace) {
    print(
        'doSomething() manejó parcialmente el error de tipo ${e.runtimeType} y el StackTrace: $stacktrace');
    // rethrow;
    throw (e);
    // throw(e, stacktrace);
  }
}

void main() {
  try {
    doSomething();
  } catch (e, stacktrace) {
    print(
        'main() terminó de manejar el error de tipo ${e.runtimeType} y el StackTrace: $stacktrace');
  }
}
