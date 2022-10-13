import 'package:flutter/material.dart';
import 'package:palinop/widgets/layouts.dart';

class CalibrationPage extends StatelessWidget {
  const CalibrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CanvasScaffold(
        pageTitle: 'Screen calibration',
        background: Colors.black,
        painter: CalibrationPainter(),
        instructions:
            'Please change screen brightness so the 3rd circle is just invisible.',
        button: TextButton(
          child: const Text('Proceed'),
          onPressed: () {
            Navigator.of(context).pushNamed('/palinop');
          },
        ));
  }
}

class CalibrationPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double padding = size.width * 0.2 / 6;
    double radius = size.width * 0.8 / 6;
    int nLight = 30;
    int nMedium = 10;
    int nDark = 5;

    Paint paintLight = Paint()
      ..color = Color.fromARGB(255, nLight, nLight, nLight)
      ..style = PaintingStyle.fill;

    Paint paintMedium = Paint()
      ..color = Color.fromARGB(255, nMedium, nMedium, nMedium)
      ..style = PaintingStyle.fill;

    Paint paintDark = Paint()
      ..color = Color.fromARGB(255, nDark, nDark, nDark)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(padding + radius, size.height / 2), radius, paintLight);
    canvas.drawCircle(
        Offset(3 * (padding + radius), size.height / 2), radius, paintMedium);
    canvas.drawCircle(
        Offset(5 * (padding + radius), size.height / 2), radius, paintDark);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
