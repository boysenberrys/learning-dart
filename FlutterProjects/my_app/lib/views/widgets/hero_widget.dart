import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;
  const HeroWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
        tag: "hero1",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/apple-wallpaper.jpg",
            color: Colors.teal,
            colorBlendMode: BlendMode.darken,
          ),
        ),
      ),
      Text(title, style: TextStyle(
        fontSize: 50,
        letterSpacing: 23,
        color: Colors.white30
      ),
      )
      ],
    );
  }
}