import 'package:flutter/material.dart';
import 'package:palinop/widgets/layouts.dart';

class ExamsPage extends StatelessWidget {
  const ExamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CanvasScaffold(
        pageTitle: 'Exams',
        background: Colors.amber,
        painter: MyPainter(),
        instructions: 'Perform the test!',
        button: Container());
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
