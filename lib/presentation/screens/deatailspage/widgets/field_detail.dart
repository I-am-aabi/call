import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Field extends StatelessWidget {
  const Field({super.key, required this.heading, required this.tile});
  final String heading;
  final String tile;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        Text(
          tile,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
