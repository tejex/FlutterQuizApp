import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.triggerFunction, this.buttonName, {key})
      : super(key: key);

  final String buttonName;
  final void Function() triggerFunction;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: triggerFunction,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade200,
                  padding: EdgeInsets.all(10)),
              child: Text(
                buttonName,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ],
      ),
    );
  }
}

//