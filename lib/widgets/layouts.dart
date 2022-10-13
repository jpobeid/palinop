import 'package:flutter/material.dart';

class CanvasScaffold extends StatelessWidget {
  final String pageTitle;
  final Color background;
  final CustomPainter painter;
  final String instructions;
  final Widget button;

  const CanvasScaffold(
      {Key? key,
      required this.pageTitle,
      required this.background,
      required this.painter,
      required this.instructions,
      required this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: background,
              child: CustomPaint(
                painter: painter,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(instructions),
                button,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
