import 'question.dart';

class QuizBrain{ List<Question>_questionBank=[
  Question(questionAnswer:false, questionText: 'You can lead a cow down stairs but not up stairs.'),
  Question(questionAnswer:true, questionText: 'Approximately one quarter of human bones are in the feet.'),
  Question(questionAnswer:false, questionText: 'Butterflies live one day'),
  Question(questionAnswer:false, questionText: 'People can live for 1 month without water'),
  Question(questionAnswer:true, questionText: 'A slug\'s blood is green.')
];

String getQuestionText(int questionIndex){
  return _questionBank[questionIndex].questionText;

}
bool getQuestionAnswer(int questionIndex){
  return _questionBank[questionIndex].questionAnswer;
}

}