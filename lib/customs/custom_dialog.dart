import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oi_tolgoo/methods/constans.dart';
import 'package:oi_tolgoo/screens/list_screen.dart';

class CustomDialog {
  static showCustomDialog ({
     BuildContext parentContext,
     String title,
     Widget content,
     }
    
    ){
 
     showDialog<String>(
        context: parentContext,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          title:  Text('Аягы'),
          
          content: content ?? Text(
              'Сиз суроолорго жооп берип бүттүңүз!\n Жалпы топтогон балыңыз: $count \n Информатика сабагынан сизге коюлган баа-  5 ' ),
          

          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>Bashkybet())),
              child: const Text('OK'),
              
            )
          ],
        ),
      );
  resetCount();
  }
  
  
}