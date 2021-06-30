import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          color: Colors.blue[200],
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: ListTile(
            title: Text(
              "This is me , Aradhana Nayak",
              style: GoogleFonts.firaCode(
                fontSize: 15.5,
                letterSpacing: 1,
                color: Colors.indigo[500],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
