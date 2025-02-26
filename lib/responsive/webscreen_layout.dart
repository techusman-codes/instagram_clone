import 'package:flutter/material.dart';

class WebscreenLayout extends StatelessWidget {
  const WebscreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'this is a web Screen Layout',
            style: TextStyle(color: Colors.amber),
          ),
        ),
      ),
      body: Center(child: Text('this is web')),
    );
  }
}
