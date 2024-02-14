import 'dart:convert';

import 'package:http/http.dart' as http;
class PostApiService1{
  Future<dynamic> PostAdd(
      String userid,
      String post,


      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://172.16.184.225:3001/users/viewall");

    var response = await client.get(apiUrl);
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }


  }
}