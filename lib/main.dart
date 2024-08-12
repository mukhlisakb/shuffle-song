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

const albumCoverList = [
  "assets/images/bruno_major.jpeg",
  "assets/images/coldplay.jpeg",
  "assets/images/hindia.jpeg",
  "assets/images/honne.jpeg",
  "assets/images/maroon5.jpeg",
  "assets/images/nadin_amizah.jpeg",
];

const songTitleList = [
  "Nothing - Bruno Major",
  "Fix You - Coldplay",
  "Kita Ke Sana - Hindia",
  "By My Side - Honne",
  "Sad - Maroon 5",
  "Mendarah - Nadin Amizah",
];

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
