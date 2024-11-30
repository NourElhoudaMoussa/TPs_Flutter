import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tp3/chatPage.dart';
import 'package:flutter_tp3/homePage.dart';
import 'package:flutter_tp3/login.dart';
import 'package:flutter_tp3/profilePage.dart';
import 'package:flutter_tp3/searchPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)),
          home: const LoginPage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  List<Widget> list = [
    const HomePage(),
    const SearchPage(),
    const ChatPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Navigation"),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // body: list[_page],
      body: IndexedStack(
        index: _page,
        children: list,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        items: const [
          CurvedNavigationBarItem(label: "Home", child: Icon(Icons.home)),
          CurvedNavigationBarItem(label: "Search", child: Icon(Icons.search)),
          CurvedNavigationBarItem(label: "Chat", child: Icon(Icons.message)),
          CurvedNavigationBarItem(
              label: "Profile", child: Icon(Icons.perm_identity))
        ],
        onTap: (value) {
          setState(() {
            _page = value;
          });
        },
      ),
    );
  }
}
