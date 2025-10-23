import 'package:flutter/material.dart';

class Menuactivity extends StatefulWidget {
  const Menuactivity({super.key});

  @override
  State<Menuactivity> createState() => _MenuactivityState();
}

class _MenuactivityState extends State<Menuactivity> {
 List<Map<String, dynamic>> items = [
    {
      "kode_produk": "PRD-001",
      "deskripsi": "Good Day Freeze",
      "harga": 15000,
      "stok": 5,
      "rating": 4.8,
      "gambar": "gambar/001.jpg"
    },
    {
      "kode_produk": "PRD-002",
      "deskripsi": "Kapal Api",
      "harga": 20000,
      "stok": 6,
      "rating": 4.7,
      "gambar": "gambar/002.jpg"
    },
    {
      "kode_produk": "PRD-003",
      "deskripsi": "Torabika Coffee",
      "harga": 21000,
      "stok": 5,
      "rating": 4.8,
      "gambar": "gambar/003.jpg"
    },
    {
      "kode_produk": "PRD-004",
      "deskripsi": "Pikopi",
      "harga": 13000,
      "stok": 5,
      "rating": 4.4,
      "gambar": "gambar/004.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}