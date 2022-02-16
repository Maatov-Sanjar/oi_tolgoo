import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconContent({Key key,
  @required this.icon,
  @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, size: 80, color: Colors.green,),
        Text(text, style: GoogleFonts.vollkornSc(
          textStyle: TextStyle(color: Colors.black,  fontSize: 23, fontWeight: FontWeight.bold ),),
         ),
      ],
    );
  }
}
