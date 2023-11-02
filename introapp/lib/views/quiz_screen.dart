import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  void goToNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Sorular bittiğinde yapılacak işlemler buraya eklenebilir.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(questions[currentQuestionIndex].question),
            ...questions[currentQuestionIndex].answers.map((answer) {
              return ElevatedButton(
                onPressed: () {
                  goToNextQuestion(); // Butona basıldığında bir sonraki soruya geç
                },
                child: Text(answer),
              );
            })
          ],
        ),
      ),
    );
  }
}
