import 'package:flutter/material.dart';
import 'package:palinop/pages/calibration.dart';
import 'package:palinop/pages/exams.dart';

void main() {
  runApp(MaterialApp(
    home: const SafeArea(
      child: CalibrationPage(),
    ),
    routes: {
      '/exams': (_) => const ExamsPage(),
    },
  ));
}
