import 'package:blockchain_learning_app/lesson_screen1.dart';
import 'package:blockchain_learning_app/lesson_screen3.dart';
import 'package:blockchain_learning_app/lessons_list_screen.dart';
import 'package:blockchain_learning_app/models/lessons_list_model.dart';
import 'package:flutter/material.dart';

class LessonScreen2 extends StatelessWidget {
  const LessonScreen2(this.lesson, {super.key});

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
                  "Part 2: Blockchain Architecture and Components",
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
                  "Discover the building blocks of a blockchain system, including blocks, transactions, and cryptographic hashing. Uncover the role of consensus mechanisms in maintaining the integrity of the network. Participants will grasp the essential components that contribute to the security and transparency of blockchain technology.",
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
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LessonScreen1(lesson),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    color: Colors.white,
                  ),
                  const Text(
                    "2/3",
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
                          builder: (context) => LessonScreen3(lesson),
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
