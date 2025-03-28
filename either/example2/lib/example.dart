import 'dart:math';

import 'package:dartz/dartz.dart';

class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() {
    return 'Failure: $message';
  }
}

class Response {
  final Object? data;

  Response(this.data);

  @override
  String toString() {
    return 'Response: $data';
  }
}

Future<Either<Failure, Response>> fetchData() async {
  await Future.delayed(Duration(milliseconds: 500));
  final random = Random();
  final isSuccess = random.nextBool();
  if (isSuccess) {
    return Right(Response('Fetched data successfully ✅'));
  } else {
    return Left(Failure('Failed to fetch data ❌'));
  }
}
