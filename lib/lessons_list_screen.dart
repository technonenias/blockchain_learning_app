import 'package:blockchain_learning_app/lesson_screen1.dart';
import 'package:blockchain_learning_app/models/lessons_list_model.dart';
import 'package:blockchain_learning_app/models/lessons_list_values.dart';
import 'package:blockchain_learning_app/models/lessons_model.dart';
import 'package:flutter/material.dart';

class LessonsListScreen extends StatelessWidget {
  const LessonsListScreen({super.key});

  @override
  Widget build(context) {
    final screenSize = MediaQuery.of(context).size;
    final Lessons lessons;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 2, 26, 160),
          width: screenSize.width,
          height: screenSize.height,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "The list of lessons: ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 226, 222, 222),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    children: Btn.lessons.map((team) {
                      return SizedBox(
                        width: screenSize.width - 20,
                        height: screenSize.height / 8,
                        child: buildButton(context, team),
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(context, Lesson lesson) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: const Color.fromARGB(255, 43, 42, 42),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white24),
          borderRadius: BorderRadius.circular(35),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LessonScreen1(lesson),
              ),
            );
          },
          child: Row(children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              lesson.logo,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lesson.lessonNumber,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 170, 164, 164),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  lesson.name,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 226, 222, 222),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
