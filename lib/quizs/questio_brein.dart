import 'dart:developer';

import 'package:oi_tolgoo/quizs/question.dart';

class QuestionBrain {
  int index = 0;
  int count = 0;
  List<Question> questions = [
   Question(question: 'Чыгармада оң каарман жана терс каарман деген түшүнүк сөзсүз болуусу  керек  \n 1- neehf     2-neehf \n 3-crfcd      4-cecfsd',answer: false),
   Question(question: 'Чындык сени өлтүрүп жатса да аны менен бирге бол ', answer: false),
   Question(question: '', answer: false),
   Question(question: 'Нарын Кыргызстандын борбору', answer: false),
   Question(question: 'Талас Кыргызстандын борбору', answer: false),
   Question(question: 'Москва Кыргызстандын борбору', answer: false),
   Question(question: 'Америка Кыргызстандын борбору', answer: false),

  ];
  

  bool checkAnswer (bool answer){
   

    return answer ==  questions[index].answer;
   
  }
  bool isLastQuestion() {
    return questions[questions.length - 2].question ==
        questions[index].question;
  }

  bool isFinished() {
    return index >= questions.length - 1;
  }

  void nextQuestion(){
    if (index < questions.length - 1){
      index++;

    } 
    print('nextQuestion.index: $index');
  }
  String getQuestion (){
    //print('getQuestion.index: ${questions[index].question}');

    return questions[index].question;
  }
  void reset() {
    index = 0;
    
  }
  



}
final QuestionBrain questionBrain = QuestionBrain ();


