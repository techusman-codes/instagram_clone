import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Mobile Screen Layout',
            style: TextStyle(color: Colors.purple),
          ),
        ),
      ),
      body: Center(
        child: Center(
          child: Text(
            'this is mobile',
          ),
        ),
      ),
    );
  }
}
