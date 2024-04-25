import  'package:flutter/material.dart';

void main() => runApp(const servicios());

class servicios extends StatelessWidget {
  const servicios({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Servicios a su disposicion"),
        ),
        body: const Center(
          child: Text(''),
        ),
      ),
    );
  }
}