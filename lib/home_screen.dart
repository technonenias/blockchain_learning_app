import 'package:flutter/material.dart';

import 'package:blockchain_learning_app/lessons_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 2, 26, 160),
      width: screenSize.width,
      height: screenSize.height,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Welcome in Blockchain Learning APP!",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 226, 222, 222),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 60,
        ),
        Image.asset(
          "lib/images/bitcoin_secure.png",
          width: 270,
          height: 270,
        ),
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          width: 200,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LessonsListScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 8, 8),
              ),
              child: const Text("Start learning")),
        )
      ]),
    );
  }
}
