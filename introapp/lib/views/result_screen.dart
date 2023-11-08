import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int correctAnswers;
  final int wrongAnswers;

  ResultScreen({required this.correctAnswers, required this.wrongAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonuç Ekranı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Doğru Cevaplar: $correctAnswers'),
            Text('Yanlış Cevaplar: $wrongAnswers'),
          ],
        ),
      ),
    );
  }
}
