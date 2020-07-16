import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Hyderabad is famous for Biryani', true),
    Question('Telangana  formation day is on 24 June ', false),
    Question('parents are the first teacher for a child ', true),
    Question('covid-19 has started in year 2019.', true),
    Question('Linux is created  by \"linus torvalds\".', true),
    Question('India is second most population country.', true),
    Question('Microsoft was founded in the year 1990', false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'github is only way to store and represent the projects in the internet',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'RAM is a volatile memory',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Create a method called isFinished() here that checks to see if we have reached the last question.
  
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
// Create a reset() method here that sets the questionNumber back to 0.

  void reset() {
    bool num = isFinished();
    if (num == true) {
      _questionNumber = 0;
    }
  }
  
