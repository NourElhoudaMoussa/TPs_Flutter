import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tp2",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child:Text("Home Page")),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
      body:const Center(child: Text("Hello Word",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}
