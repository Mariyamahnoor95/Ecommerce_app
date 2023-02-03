import 'dart:convert';

import 'package:http/http.dart' as http;
// codex tutorial
class ServerException implements Exception {}

const String baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api';
var _headers = {
  'Authorization': 'Bearer sfie328370428387=',
  'Content-Type':'application/json',
  'api_key': 'ief873fj38uf38uf83u839898989',
};
abstract class BaseClientabs {
  Future<dynamic> get(String api);
  Future<dynamic> post(String api, dynamic object);
  Future<dynamic> put(String api, dynamic object);
  Future<dynamic> delete(String api);
}

class BaseClient implements BaseClientabs {
  var client = http.Client();


  @override
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
  var response = await client.get(url, headers: _headers);
  if(response.statusCode== 200){
    return response.body;
  }
    else{
      throw ServerException();
    }
  }
// POST REQUEST

  @override
  Future<dynamic> post(String api , dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var response = await client.post(url,body: _payload, headers: _headers);
    if(response.statusCode== 201){
      return response.body;
    }
    else{
      throw ServerException();
    }
  }
//PUT REQUEST

  @override
  Future<dynamic> put(String api , dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type':'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    var response = await client.put(url,body: _payload, headers: _headers);
    if(response.statusCode== 200){
      return response.body;
    }
    else{
      throw ServerException();
    }
  }

  @override
  Future<dynamic> delete(String api) async{
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };
    var response = await client.delete(url, headers: _headers);
    if(response.statusCode== 200){
      return response.body;
    }
    else{
      throw ServerException();
    }
  }
}