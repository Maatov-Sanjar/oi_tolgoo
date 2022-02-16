import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oi_tolgoo/buttons/enter_button.dart';
import 'package:oi_tolgoo/methods/Icon_content.dart';
import 'package:oi_tolgoo/methods/Reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oi_tolgoo/methods/constans.dart';
import 'package:oi_tolgoo/screens/home_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart' show AnimatedTextKit, ColorizeAnimatedText;

class Bashkybet extends StatefulWidget {
  Bashkybet({Key key}) : super(key: key);

  @override
  _BashkybetState createState() => _BashkybetState();
}

class _BashkybetState extends State<Bashkybet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown[400],
          title: Column(
            
            children: [
              SizedBox(
                
                width: 370,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      ' Мен киммин? ',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      '     Кто я ?',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      '    Who am I?',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  // isRepeatingAnimation: true,
                  // onTap: () {
                  //   print("Tap Event");
                  // },
                ),
              ),
              // Text(
              //   'Мен киммин? - Who am I?',
              //   style: GoogleFonts.vollkorn(
              //     textStyle: TextStyle(
              //         color: Colors.white,
              //         letterSpacing: 2,
              //         fontSize: 25,
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
            ],
          ),
          
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        child: Column(
                      children: [
                        IconContent(
                          text: 'Акыйда',
                          icon: FontAwesomeIcons.balanceScale,
                        ),
                        EnterButton()
                      ],
                    )),
                  ),
                  Expanded(
                    child: ReusableCard(
                        child: Column(
                      children: [
                        IconContent(
                          text: 'Намаз',
                          icon: FontAwesomeIcons.mosque,
                        ),
                        EnterButton()
                      ],
                    )),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        child: Column(
                      children: [
                        IconContent(
                          text: 'Орозо',
                          icon: FontAwesomeIcons.userClock,
                        ),
                        EnterButton()
                      ],
                    )),
                  ),
                  Expanded(
                    child: ReusableCard(
                        child: Column(
                      children: [
                        IconContent(
                          text: 'Зекет',
                          icon: FontAwesomeIcons.handHolding,
                        ),
                        EnterButton()
                      ],
                    )),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                        child: Column(
                      children: [
                        IconContent(
                          text: 'Ажылык',
                          icon: FontAwesomeIcons.kaaba,
                        ),
                        EnterButton()
                      ],
                    )),
                  ),
                  Expanded(
                    child: ReusableCard(
                        child: Column(
                      children: [
                        IconContent(
                          text: 'Дин мээнети',
                          icon: FontAwesomeIcons.bookReader,
                        ),
                        EnterButton()
                      ],
                    )),
                  )
                ],
              ),
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    'goto text',
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
