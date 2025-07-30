import 'package:flutter/material.dart';
import 'package:magic_ball/styled_text.dart';

/**
 * the naming convention for files in Dart is snake case
 * meaning, all of the words will be of small caps and be
 * separated with underscore(_)
 * for the classes we are using pascal case(e.g.: GradientContainer)
 * for the variable we will be using camel case(e.g: bottomContainer)
 */
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple.shade300,
            Colors.purple.shade200,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
    StyledText();
  }
}
