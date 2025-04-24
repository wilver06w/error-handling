import 'package:either_dart/either.dart';

Either<String, int> parseInt(String input) {
  final result = int.tryParse(input);
  if (result == null) {
    return Left("No se pudo convertir '$input' a entero.");
  } else {
    return Right(result);
  }
}

void main() {
  final response = parseInt("abc");

  response.fold(
    (error) => print("❌ Error: $error"),
    (value) => print("✅ Éxito: $value"),
  );
}
