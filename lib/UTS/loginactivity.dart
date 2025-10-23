import 'package:flutter/material.dart';

class Loginactivity extends StatelessWidget {
  const Loginactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: 
    Padding(padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Image.asset("gambar/Logo.png", height: 100,),
          MainAxisAlignment.start,
           Text(
              "LKS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blue),),
          Text(
              "MART", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blue),),
        ],
        
        
        
    )
    ],
    ),
    ),
    );
  }
}
