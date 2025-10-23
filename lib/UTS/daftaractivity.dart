import 'package:flutter/material.dart';

class Daftaractivity extends StatefulWidget {
  const Daftaractivity({super.key});

  @override
  State<Daftaractivity> createState() => _DaftaractivityState();
}

class _DaftaractivityState extends State<Daftaractivity> {
bool _showpassword = true; 
final TextEditingController _namacontroller = TextEditingController();
final TextEditingController _alamatcontroller = TextEditingController();
final TextEditingController _usernamecontroller = TextEditingController();
final TextEditingController _passcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [ Column(
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
                    "Daftar",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Silahkan isi data pribadi anda!",
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
                "Nama Lengkap ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _namacontroller,
                decoration: InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nama tidak boleh kosong";
                    }
                    return null;
                  },
                ),
          
                Text(
                "Alamat ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
                 TextFormField(
                controller: _alamatcontroller,
                decoration: InputDecoration(
                  labelText: "Alamat",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Alamat tidak boleh kosong";
                    }
                    return null;
                  },
                ),
          
                Text(
                "Username ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
                 TextFormField(
                controller: _usernamecontroller,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username tidak boleh kosong";
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
          
               Text(
                "Konfirmasi Password* ",
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                    child: Text(
                        "daftar",
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
                  Text("Login disini", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.blueAccent),)
                ],
              )
            ],
          ),
          ],
        ),
      ),
    );
  }
}

  