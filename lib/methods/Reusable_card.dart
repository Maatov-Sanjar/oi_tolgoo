import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  final Widget childCom;
  final Function onTap;
  final Function onPress;

  const ReusableCard({
    this.bgColor,
    this.child,
    this.onTap,
    this.onPress,
    this.childCom,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {}, // Handle your callback
        // ignore: avoid_unnecessary_containers
        child: Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Ink(
                
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(25)),
                    child: child,
                    
              )),

            ),
          ),
        ),
      ),
    );
  }
}

