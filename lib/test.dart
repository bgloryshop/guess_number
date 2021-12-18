
import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);
  bool correct = true;



  while (correct == true) {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      if (guess == answer) {
        correct = false;
      }
      else if (guess < answer) {
        print(guess.toString() + " is too Low ");
      }
      else if (guess > answer) {
        print(guess.toString() + " is too High ");

      }
      i++;
    }
  }

  print(answer.toString() + " is Correct,Total guesses " + i.toString() + " times.");

}