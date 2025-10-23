import 'package:flutter/material.dart';
import 'package:uts_syifawahyuningsih_2410910040024/UTS/daftaractivity.dart';
import 'package:uts_syifawahyuningsih_2410910040024/UTS/loginactivity.dart';
import 'package:uts_syifawahyuningsih_2410910040024/UTS/menuactivity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => Loginactivity(),
        "/halaman2": (context) => Daftaractivity(),
        "/halaman3": (context) => Menuactivity(),
      },
      initialRoute: "/",
      // home: Daftaractivity(),
    );
  }
}
