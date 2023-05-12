

import 'package:call/presentation/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeappBar extends StatelessWidget {
  const HomeappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('call log',style: GoogleFonts.poppins(
        color: txtcolor,
        fontSize: 40,
        fontWeight: FontWeight.w400
      )),
    );
  }
}