import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oi_tolgoo/screens/home_screen.dart';

class EnterButton extends StatefulWidget {
  EnterButton({Key key}) : super(key: key);

  @override
  _EnterButtonState createState() => _EnterButtonState();
}

class _EnterButtonState extends State<EnterButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
                          elevation: 25,
                          constraints: BoxConstraints.tightFor(
                            width: 70,
                            height: 56,

                          ),
                          shape: RoundedRectangleBorder(borderRadius: 
                          BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          child: Text(
                            'O',
                            style: GoogleFonts.vollkornSc(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          onPressed: () {
                            setState(() {});
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
    );
  }
}