import 'package:flutter/material.dart';
import 'package:flutter_tp3/item_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ItemHome(), ItemHome(), ItemHome(), ItemHome()],
    );
  }
}
