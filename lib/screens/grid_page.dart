import 'package:flutter/material.dart';
import '../screens/detail_page.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  final List<Map<String, dynamic>> foods = const [
    {"name": "Nasi Goreng", "img": "assets/nasigoreng.png"},
    {"name": "Ayam Geprek", "img": "assets/geprek.png"},
    {"name": "Mie Goreng", "img": "assets/miegoreng.png"},
    {"name": "Kentang Goreng", "img": "assets/kentang.png"},
    {"name": "Rendang Sapi", "img": "assets/rendang.png"},
    {"name": "Sandwich", "img": "assets/sandwich.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Semua Menu")),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/4,
        ),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final item = foods[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailPage(
                name: item["name"] as String,
                image: item["img"] as String,
              )),
            ),
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(item["img"] as String, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 5),
                  Text(item["name"] as String,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}