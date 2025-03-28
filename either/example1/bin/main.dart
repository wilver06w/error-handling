import 'package:example/example.dart' as example;

void main(List<String> arguments) async {
  final response = await example.fetchData();
  print(response);
}
