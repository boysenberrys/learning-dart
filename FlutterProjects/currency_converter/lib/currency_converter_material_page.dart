
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
 const CurrencyConverterMaterialPage({super.key});

  @override
  State <CurrencyConverterMaterialPage> createState()=> _CurrencyConverterMaterialPageState();
  
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.0,
        style: BorderStyle.solid,
      ),
    );


    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text("Currency Converter",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TZS ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}", 
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter amount in TZS to convert',
                  hintStyle: TextStyle(
                    color: Colors.black
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
              ),
            ),
            //raised button
            // textButton
            Container(
              padding: const EdgeInsets.all(10),
              child: TextButton(onPressed: (){
                setState(() {
                  result = double.parse(textEditingController.text)*2300;
                });
              },style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                minimumSize: Size(double.infinity, 50)
              ),
              child: const Text("Convert",
              style: TextStyle(
                fontSize: 20
              ),
              )
              ),
            ), 
          ],
        ),
      )
    );
  }
}

// class CurrencyConverterMaterialPagee extends StatelessWidget{
//   const CurrencyConverterMaterialPagee({super.key});

//   @override
  
// }