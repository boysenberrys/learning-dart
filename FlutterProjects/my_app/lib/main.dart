import 'package:flutter/material.dart';
import 'package:my_app/data/notifier.dart';
import 'package:my_app/views/widget_tree.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkmodeNotifier,
      builder: (context, isDarkmode, child) {
        return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: isDarkmode?Brightness.dark: Brightness.light,
          )
        ),
       home: WidgetTree()
    );
      },
    );
  }
}