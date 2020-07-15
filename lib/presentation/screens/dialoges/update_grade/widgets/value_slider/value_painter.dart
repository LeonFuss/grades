import 'dart:ui';

import 'package:flutter/material.dart';

import '../update_grade_widgets.dart';

class ValuePainter extends CustomPainter {
  final double sliderPosition;
  final double dragPercentage;
  final double animationProgress;

  final SliderState sliderState;

  final Color color;

  final Paint wavePainter;
  final Paint fillPainter;

  /// Previous slider position initialised at 0.0
  double _previousSliderPosition = 0.0;

  ValuePainter({
    @required this.sliderPosition,
    @required this.dragPercentage,
    @required this.animationProgress,
    @required this.sliderState,
    @required this.color,
  })  : wavePainter = Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.5,
        fillPainter = Paint()
          ..color = color
          ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    _paintAnchors(canvas, size);

    switch (sliderState) {
      case SliderState.starting:
        _paintStartupWave(canvas, size);
        break;
      case SliderState.resting:
        _paintRestingWave(canvas, size);
        break;
      case SliderState.sliding:
        _paintSlidingWave(canvas, size);
        break;
      case SliderState.stopping:
        _paintStoppingWave(canvas, size);
        break;
      default:
        _paintSlidingWave(canvas, size);
        break;
    }
  }

  void _paintAnchors(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, size.height / 2), 5.0, fillPainter);
    canvas.drawCircle(Offset(size.width, size.height / 2), 5.0, fillPainter);
  }

  void _paintRestingWave(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    canvas.drawPath(path, wavePainter);
  }

  void _paintStartupWave(Canvas canvas, Size size) {
    final line = _calculateWaveLineDefinitions(size);

    final waveHeight = lerpDouble(size.height / 2, line.controlHeight,
        Curves.elasticOut.transform(animationProgress));
    line.controlHeight = waveHeight;
    _paintWaveLine(canvas, size, line);
  }

  void _paintSlidingWave(Canvas canvas, Size size) {
    final line = _calculateWaveLineDefinitions(size);
    _paintWaveLine(canvas, size, line);
  }

  void _paintStoppingWave(Canvas canvas, Size size) {
    final line = _calculateWaveLineDefinitions(size);

    final waveHeight = lerpDouble(line.controlHeight, size.height / 2,
        Curves.elasticOut.transform(animationProgress));

    line.controlHeight = waveHeight;

    _paintWaveLine(canvas, size, line);
  }

  void _paintWaveLine(
      Canvas canvas, Size size, WaveCurveDefinitions waveCurve) {
    final path = Path();
    path.moveTo(0.0, size.height / 2);
    path.lineTo(waveCurve.startOfBezier, size.height / 2);
    path.cubicTo(
        waveCurve.leftControlPoint1,
        size.height / 2,
        waveCurve.leftControlPoint2,
        waveCurve.controlHeight,
        waveCurve.centerPoint,
        waveCurve.controlHeight);
    path.cubicTo(
        waveCurve.rightControlPoint1,
        waveCurve.controlHeight,
        waveCurve.rightControlPoint2,
        size.height / 2,
        waveCurve.endOfBezier,
        size.height / 2);
    path.lineTo(size.width, size.height / 2);

    canvas.drawPath(path, wavePainter);
  }

  WaveCurveDefinitions _calculateWaveLineDefinitions(Size size) {
    final minWaveHeight = size.height / 2 * 0.2;
    final maxWaveHeight = size.height / 2 * 0.8;

    final controlHeight =
        (size.height / 2 - minWaveHeight) - (maxWaveHeight * dragPercentage);

    final bendWidth = 20 + 20 * dragPercentage;
    final bezierWidth = 20 + 20 * dragPercentage;

    var centerPoint = sliderPosition;
    centerPoint = (centerPoint > size.width) ? size.width : centerPoint;

    var startOfBend = centerPoint - bendWidth / 2;
    var startOfBezier = startOfBend - bezierWidth;
    var endOfBend = sliderPosition + bendWidth / 2;
    var endOfBezier = endOfBend + bezierWidth;

    startOfBend = (startOfBend <= 0.0) ? 0.0 : startOfBend;
    startOfBezier = (startOfBezier <= 0.0) ? 0.0 : startOfBezier;
    endOfBend = (endOfBend > size.width) ? size.width : endOfBend;
    endOfBezier = (endOfBezier > size.width) ? size.width : endOfBezier;

    var leftBendControlPoint1 = startOfBend;
    var leftBendControlPoint2 = startOfBend;
    var rightBendControlPoint1 = endOfBend;
    var rightBendControlPoint2 = endOfBend;

    const bendability = 25.0;
    const maxSlideDifference = 30.0;
    var slideDifference = (sliderPosition - _previousSliderPosition).abs();

    slideDifference = (slideDifference > maxSlideDifference)
        ? maxSlideDifference
        : slideDifference;

    var bend =
        lerpDouble(0.0, bendability, slideDifference / maxSlideDifference);
    final moveLeft = sliderPosition < _previousSliderPosition;
    bend = moveLeft ? -bend : bend;

    leftBendControlPoint1 = leftBendControlPoint1 + bend;
    leftBendControlPoint2 = leftBendControlPoint2 - bend;
    rightBendControlPoint1 = rightBendControlPoint1 - bend;
    rightBendControlPoint2 = rightBendControlPoint2 + bend;

    centerPoint = centerPoint - bend;

    final waveCurveDefinitions = WaveCurveDefinitions(
      controlHeight: controlHeight,
      startOfBezier: startOfBezier,
      endOfBezier: endOfBezier,
      leftControlPoint1: leftBendControlPoint1,
      leftControlPoint2: leftBendControlPoint2,
      rightControlPoint1: rightBendControlPoint1,
      rightControlPoint2: rightBendControlPoint2,
      centerPoint: centerPoint,
    );

    return waveCurveDefinitions;
  }

  @override
  bool shouldRepaint(ValuePainter oldDelegate) {
    final diff = _previousSliderPosition - oldDelegate.sliderPosition;
    if (diff.abs() > 20) {
      _previousSliderPosition = sliderPosition;
    } else {
      _previousSliderPosition = oldDelegate.sliderPosition;
    }
    return true;
  }
}

class WaveCurveDefinitions {
  double startOfBezier;
  double endOfBezier;
  double leftControlPoint1;
  double leftControlPoint2;
  double rightControlPoint1;
  double rightControlPoint2;
  double controlHeight;
  double centerPoint;

  WaveCurveDefinitions({
    @required this.startOfBezier,
    @required this.endOfBezier,
    @required this.leftControlPoint1,
    @required this.leftControlPoint2,
    @required this.rightControlPoint1,
    @required this.rightControlPoint2,
    @required this.controlHeight,
    @required this.centerPoint,
  });
}
