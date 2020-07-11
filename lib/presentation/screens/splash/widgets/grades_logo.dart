import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grades/presentation/core/style/app_colors.dart';

class GradesLogo extends StatelessWidget {
  final double size;

  const GradesLogo({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double sizeParam = size ?? MediaQuery.of(context).size.height / 50;
    return Center(
      child: CustomPaint(
        painter: LogoPainter(),
        child: SizedBox(
          height: sizeParam * 7,
          width: sizeParam * 8,
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    final Paint paint = Paint();

    path.addOval(Rect.fromCircle(
        center: Offset(size.width * 0.3, size.height * 0.5),
        radius: size.height * 0.5));

    paint.color = AppColors.accent;
    canvas.drawPath(path, paint);

    path = Path();
    path.addOval(Rect.fromCircle(
        center: Offset(size.width * 0.3, size.height * 0.5),
        radius: size.height * 0.32));

    paint.color = AppColors.scaffold;
    canvas.drawPath(path, paint);

    path = Path();

    path.addRect(
      Rect.fromPoints(Offset(size.width * 0.3, size.height * 0.42),
          Offset(size.width * 0.3 + size.height * 0.50, size.height * 0.58)),
    );

    path.addRect(
      Rect.fromPoints(
          Offset(size.width * 0.3 + size.height * 0.50, size.height * 0.42),
          Offset(size.width * 0.3 + size.height * 0.33, size.height)),
    );

    path.addPolygon([
      Offset(size.width * 0.3 + size.height * 0.50, size.height * 0.42),
      Offset(size.width * 0.85 + size.height * 0.32, size.height),
      Offset(size.width * 0.85 + size.height * 0.12, size.height),
      Offset(size.width * 0.3 + size.height * 0.45, size.height * 0.63),
    ], true);

    path.addOval(
      Rect.fromCircle(
          center: Offset(size.width * 0.85, size.height * 0.32),
          radius: size.height * 0.32),
    );

    paint.color = AppColors.accent;
    canvas.drawPath(path, paint);

    path = Path();
    path.addOval(
      Rect.fromCircle(
          center: Offset(size.width * 0.85, size.height * 0.32),
          radius: size.height * 0.15),
    );
    paint.color = AppColors.scaffold;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
