import 'package:flutter/material.dart';

//constant
void main() {
  String date = DateTime.now().toString().substring(0, 10);

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 120, 37, 183), //Configuration Widget
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2021/01/29/08/10/musician-5960112_1280.jpg",
                ),
                radius: 85,
              ),
              const Text(
                "Ömer Çağrı Bozdemir",
                style: TextStyle(fontSize: 38, color: Colors.white),
              ),
              const Text(
                "Tobeto - Mobil Geliştirme - 1B",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// Stateless => UI
// Stateful => Dynamic UI