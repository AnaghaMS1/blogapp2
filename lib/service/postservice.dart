import 'dart:convert';
import 'package:blogapp2/model/postmodel.dart';

import 'package:http/http.dart'as http;

class PostApiService{
  Future<dynamic>loginApi(

      String emailid,
      String password
      )async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/users/signin");


    var response = await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {
          "emailid": emailid,
          "password": password


        })

    );
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }


  }
  Future<dynamic> sendData(
      String name,
      String age,
      String address,
      String phoneno,
      String pincode,
      String emailid,
      String password,

      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/users/signup");

    var response = await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json ; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {

          "name": name,
          "age": age,
          "phoneno": phoneno,
          "address": address,
          "pincode": pincode,
          "emailid": emailid,
          "password": password,


        })

    );
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }


  }
  Future<List<Posts>> getPosts() async{
    var client =http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/users/view");
    var response = await client.get(apiUrl);
    if(response.statusCode==200)
    {
      return postsFromJson(response.body);
    }
    else
    {
      return [];
    }

  }

}