import 'package:blogapp2/pages/signup.dart';
import 'package:blogapp2/service/postservice.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override

  TextEditingController emailid =new TextEditingController();

  TextEditingController password=new TextEditingController();

  void SendValuetoApi() async
  {
    final response =await PostApiService().loginApi(emailid.text, password.text);
    if (response["status"] == "success") {
      String userId=response["userdata"]["_id"].toString();
      SharedPreferences preferences=await SharedPreferences.getInstance();
      preferences.setString("userId", userId);
      print("Login Successfully"+userId);

    }
    else if (response["status"] == "invalid user") {
      print("invalid user");
    }
    else{
       print("Invalid Password");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: "Emailid",
                //hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                  labelText: "password",
                  //hintText: "password"
              ),

            ),
            ElevatedButton(onPressed: SendValuetoApi, child: Text("Login")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
            }, child: Text("Create new user"))

          ],
        ),
      ),
    );
  }
}
