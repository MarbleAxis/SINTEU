import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future main() async{
  final json = await fetch();
  print(json['id']); 
}

Future<Map> fetch() async{
  var url = 'https://localhost:8080';
  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  return json;
}