void main() {
  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    // A specific exception
    buyMoreLlamas();
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }
}

void buyMoreLlamas() {
  print('Bought more llamas');
}

void breedMoreLlamas() {
  print('Breeding more llamas');
  throw OutOfLlamasException();
  // throw Exception('Out of llamas');
  // throw Error();
}

class OutOfLlamasException implements Exception {
  String errMsg() => 'Out of llamas!';
}