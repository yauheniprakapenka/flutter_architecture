import 'package:flutter/material.dart';

const _iconWidth = 24.0;
const _iconHeight = 40.0;

class BookmarkIcon extends StatelessWidget {
  const BookmarkIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(_iconWidth, _iconHeight),
      painter: _Icon(),
    );
  }
}

class _Icon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.red[200] ?? Colors.black;
    final myPath = Path()
      ..moveTo(0, 0)
      ..lineTo(_iconWidth, 0)
      ..lineTo(_iconWidth, _iconHeight)
      ..lineTo(_iconWidth * 0.5, _iconHeight * 0.7)
      ..lineTo(0, _iconHeight)
      ..lineTo(0, 0);
    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
