import 'package:currency_converter/currency_converter_cuppatino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: CurrencyConverterMaterialPage()
    );
  }
}

class MyCuppatinoApp extends StatelessWidget {
  const MyCuppatinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home:CurrencyConverterCuppatinoPage()
    );
  }
}