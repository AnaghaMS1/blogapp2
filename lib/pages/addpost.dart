
import 'package:blogapp2/service/service1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class addpost extends StatefulWidget {
  const addpost({super.key});

  @override
  State<addpost> createState() => _addpostState();
}

class _addpostState extends State<addpost> {
  @override


  //  SharedPreferences prefere=await SharedPreference.getProperty();

  void SendValuetoApi() async
  {
    SharedPreferences prefere=await SharedPreferences.getInstance();
    prefere.setString("userId", value),
    final response =await PostApiService1().PostAdd(userid.text, post.text);
    if (response["status"] == "success") {

      print("Successfully added");

    }
    else{
      print("error");
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter post"
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("Add Post"))
          ],
        ),
      ),
    );
  }
}

