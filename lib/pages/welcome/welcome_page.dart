
import 'package:dogapp/pages/main/main_page.dart';
import 'package:flutter/material.dart';

import '../main/home/home_page.dart';



class WelcomePage extends StatelessWidget {
  static const routeName = "/";
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(onPressed: (){
        Navigator.pushNamed(context,MainPage.routeName);
      }, child: const Text('Go to Main'),),
    );
  }
}
