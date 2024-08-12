import 'package:flutter/material.dart';

void main() {
  runApp(const ShuffleSongApp());
}

class ShuffleSongApp extends StatelessWidget {
  const ShuffleSongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Shuffle Song Apps",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ShuffleSongWidget());
  }
}

class ShuffleSongWidget extends StatelessWidget {
  const ShuffleSongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 0.5,
                )),
                padding: const EdgeInsets.all(10),
                width: 200,
                height: 200,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/hindia.jpeg",
                      width: 140,
                      height: 140,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Kita ke sana - Hindia",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.bookmark_add_rounded,
              color: Colors.blue,
              size: 48,
            )
          ],
        ),
      ),
    );
  }
}
