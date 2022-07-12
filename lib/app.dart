import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen()
    );
  }
}