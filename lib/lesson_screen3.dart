import 'package:blockchain_learning_app/lesson_screen2.dart';
import 'package:blockchain_learning_app/lessons_list_screen.dart';
import 'package:blockchain_learning_app/models/lessons_list_model.dart';
import 'package:flutter/material.dart';

class LessonScreen3 extends StatelessWidget {
  const LessonScreen3(this.lesson, {super.key});

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
                  "Part 3: Real-world Applications and Use Cases",
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
                  "Wrap up the introduction by exploring practical applications of blockchain across various industries. Learn how blockchain has disrupted sectors like finance, supply chain, and healthcare. Discuss the potential societal impact of widespread blockchain adoption and set the stage for deeper exploration in subsequent lessons.",
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
                          builder: (context) => LessonScreen2(lesson),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    color: Colors.white,
                  ),
                  const Text(
                    "3/3",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 241, 237, 237),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: const Color.fromARGB(255, 114, 113, 113),
                  ),
                ],
              ),
              SizedBox(
                width: screenSize.width - 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LessonsListScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: const Color.fromARGB(255, 2, 26, 160),
                  ),
                  child: const Text("Finish lesson"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
