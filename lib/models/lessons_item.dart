import 'package:blockchain_learning_app/models/lessons_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.lesson, {super.key});

  final Lessons lesson;

  @override
  Widget build(context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.height / 20,
        ),
        SizedBox(
          width: screenSize.width / 1.2,
          child: Text(
            lesson.header,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 241, 237, 237),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: screenSize.height / 25,
        ),
        SizedBox(
          width: screenSize.width / 1.2,
          child: Text(
            lesson.text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 241, 237, 237),
            ),
          ),
        ),
        SizedBox(
          height: screenSize.height / 28,
        ),
      ],
    );
  }
}
