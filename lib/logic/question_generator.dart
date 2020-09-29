import 'dart:math';

class QuestionGenerator{

   QuestionData generic() {
     var question = '';
     var answer;
     var random = Random();
     var first = random.nextInt(20);
     var second = random.nextInt(20);
     var answ = random.nextInt(40);
     var symb = random.nextInt(3);
     switch(symb) {
       case 0: {
        answer = first + second == answ;
        question = '$first + $second = $answ';
        break;
       }
       case 1: {
         answer = first - second == answ;
         question = '$first - $second = $answ';
         break;
       }
       case 2: {
         answer = first / second == answ;
         question = '$first / $second = $answ';
         break;
       }
       case 3: {
         answer = first * second == answ;
         question = '$first * $second = $answ';
         break;
       }
     }
     return QuestionData(question, answer);
   }
}

class QuestionData {
  final String question;
  final bool answer;

  QuestionData(this.question, this.answer);
}

