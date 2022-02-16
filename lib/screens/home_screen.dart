import 'package:flutter/material.dart';
import 'package:oi_tolgoo/customs/custom_button.dart';
import 'package:oi_tolgoo/methods/constans.dart';
import 'package:oi_tolgoo/customs/custom_dialog.dart';
import 'package:oi_tolgoo/screens/list_screen.dart';
import 'package:oi_tolgoo/quizs/questio_brein.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Icon> scoreKeeper = [];
  // Array, List, massiv
  //DART: List

  bool _isLast = false;

// functions

  void checkAnswer(bool answer) {
    //

    final _lastQuestion = questionBrain.isLastQuestion();

    print('_lastQuestion: $_lastQuestion');

    if (_lastQuestion) {
      setState(() {
        _isLast = true;
      });
    }
    void resetCount() {
      count = 0;
    }

    final _finished = questionBrain.isFinished();

    if (_finished) {
      if (count > 20) {
        CustomDialog.showCustomDialog(
          parentContext: context,
          content: Text('Алган бааңыз  5'),
        );
      } else {
        CustomDialog.showCustomDialog(
          parentContext: context,
          content: Text('Алган бааңыз  4'),
        );
      }

      questionBrain.reset();

      //Versiya 1,
      //   setState(() {
      //    scoreKeeper = [];
      // });

      //Versiya 2,
      scoreKeeper = [];
      setState(() {
        _isLast = false;
      });
    } else {
      final _result = questionBrain.checkAnswer(answer);

      // TRUE: kiska jolu: _result
      // uzun jolu: _result == true
      // FALSE:  kiska jolu: !_result
      // uzun joldoru: _result == false, je bolboso _result != true

      if (_result) {
        count += 5;
        //
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        count -= 5;
        //
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      questionBrain.nextQuestion();
      setState(() {});
    }

    // print('answer: $answer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    // quizBrain.getQuestionText(),
                    // 'test',
                    // QuestionBrain().getQuestion(), //Versiya 1,
                    questionBrain.getQuestion(), //Versiya 2
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                _isLast
                    ? const SizedBox.shrink()
                    : CustomButton(
                        onPressed: () => checkAnswer(true),
                        buttonText: 'Туура',
                      ),
                      CustomButton(
                        onPressed: () => checkAnswer(false),
                        buttonText: 'Туура эмес',
                        ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    _isLast ? 'Аягы' : 'Туура эмес',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //The user picked false.
                    checkAnswer(false);
                  },
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Сиздин топтогон балыңыз : $count',
                    style: TextStyle(fontSize: 20.0, color: Colors.amber)),
                Container(
                  height: 20.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
