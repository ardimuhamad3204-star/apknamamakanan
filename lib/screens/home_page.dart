import 'package:flutter/material.dart';
import '../screens/grid_page.dart';
import '../widgets/header.dart';
import '../widgets/food_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Warung Makan"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),

            const Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Menu Rekomendasi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Row(
              children: [
                Expanded(child: FoodCard(title: "Nasi Goreng", image: "assets/nasigoreng.png")),
                SizedBox(width: 10),
                Expanded(child: FoodCard(title: "Ayam Geprek", image: "assets/geprek.png")),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Expanded(child: FoodCard(title: "Mie Goreng", image: "assets/miegoreng.png")),
                SizedBox(width: 10),
                Expanded(child: FoodCard(title: "Rendang Sapi", image: "assets/rendang.png")),
              ],
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text("Lihat Semua Menu"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const GridPage()));
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}