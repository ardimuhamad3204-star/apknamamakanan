import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String image;

  const DetailPage({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(image,
                  height: 220, width: double.infinity, fit: BoxFit.cover),

              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    name,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              _getDescription(name),
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }

  String _getDescription(String name) {
    switch (name) {
      case "Nasi Goreng":
        return "Nasi Goreng dibuat dengan nasi yang digoreng bersama rempah khas Indonesia, telur, dan kecap yang memberikan rasa gurih nikmat.";
      case "Ayam Geprek":
        return "Ayam Goreng yang digeprek dan disajikan dengan sambal pedas yang mantap, cocok untuk pecinta pedas!";
      case "Mie Goreng":
        return "Mie yang dimasak dengan bumbu gurih, kecap, sayuran dan topping telur atau ayam.";
      case "Kentang Goreng":
        return "Kentang goreng renyah di luar dan lembut di dalam, cocok sebagai teman makan atau camilan.";
      case "Rendang Sapi":
        return "Daging sapi dimasak dengan santan dan rempah khas Minang selama berjam-jam hingga empuk dan penuh rasa.";
      case "Sandwich":
        return "Roti isi sayuran dan daging/ham yang ringan dan cocok untuk sarapan atau makan cepat.";
      default:
        return "Menu enak dan populer di warung kami!";
    }
  }
}