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
            Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),
            Text("Password"),
            TextField(
              decoration: InputDecoration(
                  hintText: "password"
              ),

            ),
            ElevatedButton(onPressed: (){}, child: Text("Login")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("Create new user"))

          ],
        ),
      ),
    );
  }
}
