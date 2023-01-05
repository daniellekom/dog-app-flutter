import 'package:dogapp/pages/main/home/home_page.dart';
import 'package:dogapp/pages/main/inbox/inbox_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const routeName = "/main_page";

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map<String, Widget> pages = {"home_tab": const HomePage(), "inbox_tab": const InboxPage()};

  Map<String, IconData> tabs = {
    "home": Icons.home,
    "inbox": Icons.message,
  };

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.values.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState((){
            currentIndex = index;
          });
        },
          items: tabs.keys.map((key) => BottomNavigationBarItem(icon: Icon(tabs[key]), label: key)).toList()),
    );
  }
}
