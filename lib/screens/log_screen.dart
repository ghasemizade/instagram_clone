import 'package:flutter/material.dart';

class logScreen extends StatefulWidget {
  logScreen({Key? key}) : super(key: key);

  @override
  State<logScreen> createState() => _logScreenState();
}

class _logScreenState extends State<logScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hosein'),
      ),
    );
  }
}
