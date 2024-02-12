import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override

   TextEditingController emailid=new TextEditingController();
  TextEditingController password=new TextEditingController();


   void SendValuetoApi() async
  {
    final response =await PostApiService().sendData(bookName.text, authorName.text, publisherName.text);
    if (response["status"] == "success") {

      print("Successfully Login");

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
