import 'package:blockchain_learning_app/lesson_screen2.dart';
import 'package:blockchain_learning_app/lessons_list_screen.dart';
import 'package:blockchain_learning_app/models/lessons_list_model.dart';
import 'package:blockchain_learning_app/models/lessons_model.dart';
import 'package:flutter/material.dart';

class LessonScreen1 extends StatelessWidget {
  const LessonScreen1(this.lesson, {super.key});

  final Lesson lesson;

  @override
  Widget build(context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LessonsListScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            );
          }),
          backgroundColor: const Color.fromARGB(255, 2, 26, 160),
          title: Text(
            lesson.name,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 236, 231, 231),
            ),
          ),
        ),
        body: Container(
          height: screenSize.height,
          width: screenSize.width,
          color: const Color.fromARGB(255, 26, 25, 25),
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height / 20,
              ),
              SizedBox(
                width: screenSize.width / 1.2,
                child: const Text(
                  "Part 1: Understanding the Basics",
                  style: TextStyle(
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
                child: const Text(
                  "In this introductory lesson, participants will delve into the fundamental concepts of blockchain technology. Explore the origin of blockchain, its underlying principles, and how it revolutionizes traditional systems. Gain insight into the decentralized and distributed nature of blockchain networks, setting the stage for a comprehensive understanding of the technology.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 241, 237, 237),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height / 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 114, 113, 113),
                    ),
                    color: Colors.white,
                  ),
                  const Text(
                    "1/3",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 241, 237, 237),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LessonScreen2(lesson),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
