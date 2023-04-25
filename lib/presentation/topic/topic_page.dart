import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  const TopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [Text('What Brings you to Silent Moon?')],
      )),
    );
  }
}
