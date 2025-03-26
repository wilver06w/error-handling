void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e, stacktrace) {
    print(
        'misbehave() partially handled ${e.runtimeType}. StackTrace: $stacktrace');
    // rethrow;
    throw(e);
    // throw(e, stacktrace);
  }
}

void main() {
  try {
    misbehave();
  } catch (e, stacktrace) {
    print('main() finished handling ${e.runtimeType}. StackTrace: $stacktrace');
  }
}
