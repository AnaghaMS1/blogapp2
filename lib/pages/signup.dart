import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Column(
          children: [
            Text("Name"),
            TextField(
              decoration: InputDecoration(
                  hintText: "name"
              ),

            ),
            SizedBox(height: 10,),
            Text("Age"),
            TextField(
              decoration: InputDecoration(
                  hintText: "age"
              ),

            ),
            SizedBox(height: 10,),
            Text("Address"),
            TextField(
              decoration: InputDecoration(
                  hintText: "address"
              ),

            ),
            SizedBox(height: 10,),
            Text("phoneno"),
            TextField(
              decoration: InputDecoration(
                  hintText: "phoneno"
              ),

            ),
            SizedBox(height: 10,),
            Text("pincode"),
            TextField(
              decoration: InputDecoration(
                  hintText: "pincode"
              ),

            ),
            SizedBox(height: 10,),
            Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                hintText: "eamild"
              ),

            ),
            SizedBox(height: 10,),
            Text("Password"),
            TextField(
              decoration: InputDecoration(
                hintText: "password"
              ),
            ),
            ElevatedButton(onPressed: (){

            }, child: Text("Submit")),
            ElevatedButton(onPressed: (){}, child: Text("Back to login")),

          ],
        ),
      ),
    );
  }
}
