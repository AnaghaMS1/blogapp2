import 'package:blogapp2/pages/signup.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
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
                hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                  labelText: "password",
                  hintText: "password"
              ),

            ),
            ElevatedButton(onPressed: (){
              
            }, child: Text("Login")),
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
