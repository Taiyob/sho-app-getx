import 'package:flutter/material.dart';

class ForButtonLink extends StatefulWidget {
  const ForButtonLink({Key? key}) : super(key: key);

  @override
  State<ForButtonLink> createState() => _ForButtonLinkState();
}

class _ForButtonLinkState extends State<ForButtonLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Area'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Container(
            height: 250,
            width: 250,
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(width: 10),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
    );
  }
}
