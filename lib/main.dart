import 'package:flutter/material.dart';

const appName = 'Daily News';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
        ),
        body: const Center(
          child: Text(appName),
        ),
      ),
    );
  }
}
