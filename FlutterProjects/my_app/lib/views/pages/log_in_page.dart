import 'package:flutter/material.dart';
import 'package:my_app/views/widget_tree.dart';
import 'package:my_app/views/widgets/hero_widget.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController  controllerEmail = TextEditingController(text: "admin@mail.com");
  TextEditingController controllerPw = TextEditingController(text: "admin123");
  String confirmedPassword = "admin123";
  String confirmedEmail = "admin@mail.com";

  
  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                HeroWidget(title: widget.title),
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hint: Text("Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
          
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerPw,
                  decoration: InputDecoration(
                    hint: Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0)
                  ),
                  onPressed: (){
                    loginActivated();
                  },
                  child: Text(widget.title)
                ),
                SizedBox(height: 60.0)
                
              ],
            ),
          ),
        ),
      ),
    );
  }
  void loginActivated(){
    if(confirmedEmail == controllerEmail.text && confirmedPassword== controllerPw.text){
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context){
          return WidgetTree();
        }
        ),
        (route) => false,
      );
    }
  }
}