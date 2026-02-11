import 'package:flutter/material.dart';
import 'package:my_app/data/notifier.dart';
import 'package:my_app/views/pages/home_page.dart';
import 'package:my_app/views/pages/profile_page.dart';
import 'package:my_app/views/pages/setting_page.dart';
import 'package:my_app/views/widgets/nav_bar_widget.dart';

List <Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Map", style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          actions: [
            IconButton(onPressed: ()
            {isDarkmodeNotifier.value = !isDarkmodeNotifier.value;},
            
            icon: ValueListenableBuilder(valueListenable: isDarkmodeNotifier, builder: (context, isDarkmode, child) {
              return Icon(isDarkmode?Icons.dark_mode:Icons.light_mode); 
            }, 
            )
           ),
           IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SettingPage();
              }
              )
              );
            }, 
            icon: Icon(Icons.settings))
          ],
        ),
        body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return  pages.elementAt(selectedPage);
          },
        ),
        bottomNavigationBar: NavbarWidget()
      );
  }
}