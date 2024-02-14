import 'package:blogapp2/pages/viewpage.dart';
import 'package:flutter/material.dart';

class postpage extends StatelessWidget {
  const postpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>postpage()));
            }, child:Text("Add Post")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>viewpage()));
            }, child: Text("view Post")),

          ],
        ),
      ),
    );
  }
}
