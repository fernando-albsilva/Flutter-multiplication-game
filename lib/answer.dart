import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.text, this.onSelection);

  final String text;
  final void Function() onSelection;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0,10,0,10),
      child: ElevatedButton(
          onPressed: onSelection,
          child: Container(
            width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Text(
              text,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center
            ),
          ),
      ),
    );
  }
}