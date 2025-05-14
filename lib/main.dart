import 'package:flutter/material.dart';
import 'package:xebilson/home_page.dart';

void main() {
  runApp(const ContactsApp());
}

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos',
      //theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepOrangeAccent,
              brightness: Brightness.light)
      ),
      darkTheme:ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepOrangeAccent,
              brightness: Brightness.dark)
      ),
      home: const HomePage(),
    );
  }
}