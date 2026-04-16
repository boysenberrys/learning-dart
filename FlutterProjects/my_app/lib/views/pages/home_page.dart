import 'package:flutter/material.dart';
import 'package:my_app/views/widgets/container_widget.dart';
import 'package:my_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: "Home"),
            ContainerWidget(title: "Basic layout", description: "This is a description"),
            ContainerWidget(title: "New container", description: "It looks amazing"),
            ContainerWidget(title: "Gambling flutter", description: "Take chance or loose chance"),
            ContainerWidget(title: "Basic layout", description: "This is a description"),
            ContainerWidget(title: "New container", description: "It looks amazing"),
            ContainerWidget(title: "Gambling flutter", description: "Take chance or loose chance")
          ],
        ),
      )
    );
  }
}