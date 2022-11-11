import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const ChatSample());
}

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const Homepage(),
    );
  }
}
