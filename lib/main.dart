import 'package:flutter/material.dart';
import 'package:uts_syifawahyuningsih_2410910040024/UTS/daftaractivity.dart';
import 'package:uts_syifawahyuningsih_2410910040024/UTS/loginactivity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Daftaractivity(),
    );
  }
}
