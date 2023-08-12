import 'package:flutter/material.dart';
import 'package:android/xylophone_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylophone",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Xylophone")),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white70,
        body: const XylophoneScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
