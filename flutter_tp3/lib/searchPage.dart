import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Center(child: Text("Flex 2")),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orange,
              child: const Center(child: Text("Flex 1")),
            ),
          ),
        ],
      ),
    );
  }
}
