
import 'package:flutter/material.dart';
import 'package:my_app/views/widgets/nav_bar_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();

  bool? isChacked = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Setting Page"),
      ),
      body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
                onEditingComplete: () {
                  setState(() {
                    
                  });
                },
              ),
              Text(controller.text),
              Checkbox
              (value: isChacked, 
              tristate: true,
              onChanged:  (bool? value){
                setState(() {
                  isChacked = value;
                });
              }),
              CheckboxListTile(value: isChacked,
              title: Text("Legal Guardian"),
               onChanged: (bool?value){
                setState(() {
                  isChacked = value;
                });
               }
               ),
               Switch.adaptive(value: isSwitched, onChanged: (bool value){
                setState(() {
                  isSwitched = value;
                });
               }),
               SwitchListTile(value: isSwitched, 
               title: Text("Switch me"),
               onChanged: (bool value){
                setState(() {
                  isSwitched = value;
                });
               }),
            ],
          ),
        ),
      ),
    ),
    bottomNavigationBar: NavbarWidget(),
    );
  }
}