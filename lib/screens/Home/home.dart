import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wiredash Feedbacks"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(18.0),
          ),
          onPressed: () {
            Wiredash.of(context).show(inheritMaterialTheme: true);
          },
          child: const Text("Get feedbacks"),
        ),
      ),
    );
  }
}
