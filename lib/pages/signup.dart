

import 'package:blogapp2/service/postservice.dart';
import 'package:flutter/material.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override

  TextEditingController name =new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController  address =new TextEditingController();
  TextEditingController  pincode =new TextEditingController();
  TextEditingController  phoneno =new TextEditingController();
  TextEditingController  emailid =new TextEditingController();
  TextEditingController  password =new TextEditingController();

  void SendValuetoApi() async
  {
    final response =await PostApiService().sendData(name.text, age.text,
        address.text, phoneno.text, pincode.text, emailid.text, password.text);
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
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller:name,
              decoration: InputDecoration(
                  hintText: "Name ",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller:age,
              decoration: InputDecoration(
                  hintText: "age",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller:address,
              decoration: InputDecoration(
                  hintText: "address",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller:pincode,
              decoration: InputDecoration(
                  hintText: "pincode",
                  border: OutlineInputBorder()
              ),
            ),   TextField(
              controller:emailid,
              decoration: InputDecoration(
                  hintText: "email id",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller:password,
              decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder()
              ),
            ),

            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(

                  onPressed: SendValuetoApi, child: Text("Create")),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Go Back to"))
          ],
        ),
      ),
    );
  }
}
