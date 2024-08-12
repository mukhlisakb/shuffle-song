import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shuffle_song_app/constant.dart';

class ShuffleSongScreen extends StatefulWidget {
  const ShuffleSongScreen({super.key});

  @override
  State<ShuffleSongScreen> createState() => _ShuffleSongScreenState();
}

class _ShuffleSongScreenState extends State<ShuffleSongScreen> {
  int _currentIndex = 0;

  void _shuffleSong() {
    Random random = Random();
    int randomIndex = random.nextInt(6);
    setState(() {
      _currentIndex = randomIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/spotify.png",
                  width: 36,
                  height: 36,
                ),
                const SizedBox(width: 4),
                const Text(
                  "Spotify",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
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
                      ShuffleSongConstant.albumCoverList[_currentIndex],
                      width: 140,
                      height: 140,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      ShuffleSongConstant.songTitleList[_currentIndex],
                      style: const TextStyle(
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
            Center(
              child: IconButton(
                onPressed: _shuffleSong,
                icon: const Icon(
                  Icons.arrow_circle_right_rounded,
                  color: Colors.blue,
                  size: 48,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
