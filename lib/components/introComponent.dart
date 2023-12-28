import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class IntroComponent extends StatelessWidget {
  const IntroComponent(this.beginQuiz, {key}) : super(key: key);

  final void Function() beginQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/logo.png', width: 280),
          Text(
            "Learn Flutter With The Top Gs",
            textAlign: TextAlign.center,
            style: GoogleFonts.carlito(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              beginQuiz();
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.deepPurple,
                backgroundColor: Colors.lightBlue),
            label: Text(
              "Start Quiz",
              style: GoogleFonts.carlito(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
