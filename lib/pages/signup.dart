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
            Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                  hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),   Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                  hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),   Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                  hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),   Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                  hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),   Text("Emailid"),
            TextField(
              decoration: InputDecoration(
                  hintText: "emailid"
              ),

            ),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
