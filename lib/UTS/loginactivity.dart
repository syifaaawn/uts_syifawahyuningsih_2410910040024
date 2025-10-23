import 'package:flutter/material.dart';

class Loginactivity extends StatefulWidget {
  const Loginactivity({super.key});

  @override
  State<Loginactivity> createState() => _LoginactivityState();
}

class _LoginactivityState extends State<Loginactivity> {
  bool _showpassword = true; 
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("gambar/Logo.png", height: 100),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LKS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "MART",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Enter Your ID and password to sign in!",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Text(
              "Email ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                labelText: "email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email tidak boleh kosong";
                  }
                  return null;
                },
              ),

            SizedBox(height: 15),

            Text(
              "Password* ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _passcontroller,
              obscureText: _showpassword,
              decoration: InputDecoration(
                 suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showpassword = !_showpassword;
                    });
                  },
                  icon: Icon(
                    _showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                  ),
                ),
                labelText: "Min. 8 Characters",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
               validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password tidak boleh kosong";
                  }
                  return null;
                },
            ),

            SizedBox(height: 25),

           Row(
             children: [
              Expanded(child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/halaman3"); 
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ),
              
             ],
            ),
            SizedBox( height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Belum punya akun? ", style: TextStyle( fontWeight: FontWeight.bold),),
                Text("Daftar disini", style: TextStyle( fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 8, 33, 76)),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
