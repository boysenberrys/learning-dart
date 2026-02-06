import 'package:flutter/cupertino.dart';

class CurrencyConverterCuppatinoPage extends StatefulWidget {
  const CurrencyConverterCuppatinoPage({super.key});

  @override
  State<CurrencyConverterCuppatinoPage> createState() => _CurrencyConverterCuppatinoPageState();
}

class _CurrencyConverterCuppatinoPageState extends State<CurrencyConverterCuppatinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {


    return  CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("Currency Converter",
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black
                  ),
                  decoration: BoxDecoration(
                    color:CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: "Please Enter amount in USD",
                  prefix: Icon(CupertinoIcons.money_dollar),
                  keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
                ),
              ),
              //raised button
              // textButton
              const SizedBox(height: 10),
              CupertinoButton(onPressed: (){
                setState(() {
                  result = double.parse(textEditingController.text)*2300;
                });
              },
              color: CupertinoColors.black,
              
              child: const Text("Convert",
              style: TextStyle(
                fontSize: 20
              ),
              )
              ), 
            ],
          ),
        ),
      )
    );
  }
  
}