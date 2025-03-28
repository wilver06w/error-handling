import 'dart:math';

class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() {
    return 'Failure => $message';
  }
}

class Response {
  final Object? data;
  final Failure? failure;

  bool get isSuccess => data != null && failure == null;
  String get status => isSuccess ? data.toString() : failure.toString();

  Response.success(this.data) : failure = null;
  Response.failure(this.failure) : data = null;

  @override
  String toString() {
    return 'Response => $status';
  }
}

Future<Response> fetchData() async {
  await Future.delayed(Duration(milliseconds: 500));
  final random = Random();
  final isSuccess = random.nextBool();
  if (isSuccess) {
    return Response.success('Fetched data successfully ✅');
  } else {
    return Response.failure(Failure('Failed to fetch data ❌'));
  }
}
