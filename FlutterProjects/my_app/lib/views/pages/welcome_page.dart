import 'package:flutter/material.dart';
import 'package:my_app/views/pages/log_in_page.dart';
import 'package:my_app/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lotties/Welcome.json"),
            SizedBox(height: 200),
            FittedBox(
              child: Text("Flutter Map",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
              ),
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0)
              ),
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context){
                    return WidgetTree();
                  }
                  )
                );
              },
              child: Text("Get Started")
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }
                  )
                );
              },
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0)
              ),
              child: Text("Login"),
              
            )
          ],
        ),
      ),
    );
  }
} 