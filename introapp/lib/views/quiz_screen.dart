import 'package:flutter/material.dart';
import 'package:introapp/data/questions.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  int selectedQuestionIndex = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  Color buttonColor = Colors.blue; // İlk buton rengi

  void checkAnswer(String selectedAnswer) {
    if (selectedAnswer == questions[selectedQuestionIndex].correctAnswer) {
      setState(() {
        correctAnswers++;
        buttonColor = Colors.green; // Doğru cevap rengi
      });
    } else {
      setState(() {
        wrongAnswers++;
        buttonColor = Colors.red; // Yanlış cevap rengi
      });
    }

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        if (questions.length - 1 > selectedQuestionIndex) {
          selectedQuestionIndex++;
          buttonColor =
              Colors.blue; // Bir sonraki soruya geçildiğinde eski rengine dön
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                correctAnswers: correctAnswers,
                wrongAnswers: wrongAnswers,
              ),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(questions[selectedQuestionIndex].question),
              ...questions[selectedQuestionIndex].answers.map((answer) {
                return ElevatedButton(
                  onPressed: () {
                    checkAnswer(answer);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                  ),
                  child: Text(answer),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
