import 'question.dart';

class QuizBrain{
  int _questionIndex = 0;
  List<Question>_questionBank=[
  Question(questionAnswer:false, questionText: 'You can lead a cow down stairs but not up stairs.'),
  Question(questionAnswer:true, questionText: 'Approximately one quarter of human bones are in the feet.'),
  Question(questionAnswer:false, questionText: 'Butterflies live one day'),
  Question(questionAnswer:false, questionText: 'People can live for 1 month without water'),
  Question(questionAnswer:true, questionText: 'A slug\'s blood is green.')
];

String getQuestionText(){
  return _questionBank[_questionIndex].questionText;

}
bool getQuestionAnswer(){
  return _questionBank[_questionIndex].questionAnswer;
}
void nextQuestion(){if(_questionIndex+1<_questionBank.length){
  _questionIndex++;}
}
}