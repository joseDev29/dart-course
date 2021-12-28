import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_1/classes/req_res_response.dart';

getReqRes() async {
  int page = 2;
  final Uri apiURL = Uri.parse('https://reqres.in/api/users?page=$page');

  final response = await http.get(apiURL);

  final ReqResResponse reqResResponse = reqResResponseFromJson(response.body);

  print(reqResResponse.data.map((person) => print(person.toJson())));
}
