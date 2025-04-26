import 'package:flutter/material.dart';
import 'package:xebilson/home.dart';
import 'package:xebilson/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos',
      theme: MaterialTheme(TextTheme()).light(),
      darkTheme: MaterialTheme(TextTheme()).dark(),
      routes: {
        Navigator.defaultRouteName: (BuildContext context) => const HomePage(title: 'Contatos'),
      }
    );
  }
}