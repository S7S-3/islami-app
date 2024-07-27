import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/radio_pic.png",
          height: 412,
        ),
        Text(
          "إذاعة القرآن الكريم",
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Handle back action
              },
              child: Image.asset(
                "assets/images/back.png",
                width: 13,
                height: 23,
              ),
            ),
            SizedBox(width: 60),
            GestureDetector(
              onTap: () {
                // Handle stop action
              },
              child: Image.asset(
                "assets/images/stop.png",
                width: 31,
                height: 36,
              ),
            ),
            SizedBox(width: 60),
            GestureDetector(
              onTap: () {
                // Handle forward action
              },
              child: Image.asset(
                "assets/images/forward.png",
                width: 13,
                height: 23,
              ),
            ),
          ],
        ),
      ],
    );
  }
}