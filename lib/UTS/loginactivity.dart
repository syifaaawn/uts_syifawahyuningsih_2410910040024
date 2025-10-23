import 'package:flutter/material.dart';

class Loginactivity extends StatelessWidget {
  const Loginactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: 
    Padding(padding: EdgeInsets.all(30),
    child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("gambar/Logo.png", height: 100,),
          SizedBox(width: 15,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("LKS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blue),),
            Text("MART", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blue),),
          ],
        ), 
        ],
    ),
    Row(
      children: [
        Text("Sign In")
      ],
    )
    ],
    
    ),
    ),
    );
  }
}
