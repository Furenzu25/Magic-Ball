import 'package:flutter/material.dart';
import 'package:magic_ball/magic_ball_widget.dart';

/* 
  dast is a type safe language, which means that
  it will not allow you to set a value of the wrong type

  The language is using type inferencing which means it determines
  the data type based on the initial value.

  The lowest data type in dart is dynamic data type = it can be anything
  unsafe and needed to be cast to a specific data type
*/

//Alignment alignmentTopLeft = Alignment.topRight;
// Type annotation, we explicitly define the data type

//var alignmentTopLeft = Alignment.topLeft;
//var alignmentBottomRight = Alignment.bottomRight;
// Type inference, based on initial value

const topLeft = Alignment.topLeft;
const bottomRight = Alignment.bottomRight;
//const word = 'Hello World!';
//the values are actually replaced during compile time.
//the values should already be known like literals when setting variables regarding constant since
//it can't be known during compile time. It should be known during compile time.
//constants are during compile time and final are run time.
List<String> listOfWords = ['hello', 'world'];
List<int> listOfNumbers = [1, 2, 3, 4, 5];
List<Widget> listOfWidgets = [];
//final bottomRight = Alignment.bottomRight;

/**
 * the naming convention for files in Dart is snake case
 * meaning, all of the words will be of small caps and be
 * separated with underscore(_)
 * for the classes we are using pascal case(e.g.: GradientContainer)
 * for the variable we will be using camel case(e.g: bottomContainer)
 */
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  void shake() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple.shade300,
            Colors.purple.shade200,
          ],
          begin: topLeft,
          end: bottomRight,
        ),
      ),
      child: Center(child: MagicBallWidget()),
      //child: StyledText("Are you crazy?"), // <- Add as child
    );
  }
}
