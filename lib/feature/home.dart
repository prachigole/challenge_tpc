import 'package:challenge_app/feature/gif_display.dart';
import 'package:flutter/material.dart';

/// The homepage of our application
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: const Column(
        children: [
          GifDisplay(),
        ],
      ),
    );
  }
}
