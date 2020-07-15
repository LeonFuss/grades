import 'package:flutter/material.dart';

import 'value_painter.dart';

class ValueSlider extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final ValueChanged<double> onChanged;
  final ValueChanged<double> onChangeStart;
  final ValueChanged<double> onChangeEnd;

  const ValueSlider({
    Key key,
    @required this.height,
    @required this.width,
    @required this.color,
    @required this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
  })  : assert(height >= 50 && height <= 600),
        super(key: key);

  @override
  _ValueSliderState createState() => _ValueSliderState();
}

class _ValueSliderState extends State<ValueSlider>
    with SingleTickerProviderStateMixin {
  double _dragPosition = 0;
  double _dragPercentage = 0;

  ValueSliderController _slideController;

  @override
  void initState() {
    super.initState();
    _slideController = ValueSliderController(vsync: this)
      ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    _slideController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (updateDetails) =>
          _onDragUpdate(context, updateDetails),
      onHorizontalDragStart: (startDetails) =>
          _onDragStart(context, startDetails),
      onHorizontalDragEnd: (endDetails) => _onDragEnd(context, endDetails),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: CustomPaint(
          painter: ValuePainter(
            color: widget.color,
            sliderPosition: _dragPosition,
            dragPercentage: _dragPercentage,
            sliderState: _slideController.state,
            animationProgress: _slideController.progress,
          ),
        ),
      ),
    );
  }

  void _handleChanged(double val) {
    assert(widget.onChanged != null);
    widget.onChanged(val);
  }

  void _handleChangeStart(double val) {
    if (widget.onChangeStart != null) {
      widget.onChangeStart(val);
    }
  }

  void _handleChangeEnd(double val) {
    if (widget.onChangeEnd != null) {
      widget.onChangeEnd(val);
    }
  }

  void _updateDragPosition(Offset value) {
    var newDragPosition = 0.0;
    if (value.dx <= 0) {
      newDragPosition = 0;
    } else if (value.dx > widget.width) {
      newDragPosition = widget.width;
    } else {
      newDragPosition = value.dx;
    }
    setState(() {
      _dragPosition = newDragPosition;
      _dragPercentage = _dragPosition / widget.width;
    });
  }

  void _onDragStart(BuildContext context, DragStartDetails updateDetails) {
    final localOffset =
        _getLocalOffsetFromGlobalOffset(context, updateDetails.globalPosition);
    _slideController.setStateToStart();
    _updateDragPosition(localOffset);
    _handleChangeStart(_dragPercentage);
  }

  void _onDragUpdate(BuildContext context, DragUpdateDetails updateDetails) {
    final localOffset =
        _getLocalOffsetFromGlobalOffset(context, updateDetails.globalPosition);
    _slideController.setStateToSliding();
    _updateDragPosition(localOffset);
    _handleChanged(_dragPercentage);
  }

  void _onDragEnd(BuildContext context, DragEndDetails updateDetails) {
    _slideController.setStateToStopping();
    setState(() {});
    _handleChangeEnd(_dragPercentage);
  }

  Offset _getLocalOffsetFromGlobalOffset(
      BuildContext context, Offset globalPosition) {
    final box = context.findRenderObject() as RenderBox;
    return box.globalToLocal(globalPosition);
  }
}

class ValueSliderController extends ChangeNotifier {
  final AnimationController controller;
  SliderState _state = SliderState.resting;

  ValueSliderController({@required TickerProvider vsync})
      : controller = AnimationController(vsync: vsync) {
    controller
      ..addListener(_onProgressUpdate)
      ..addStatusListener(_onStatusUpdate);
  }

  void _onProgressUpdate() {
    notifyListeners();
  }

  void _onStatusUpdate(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _onTransitionCompleted();
    }
  }

  void _onTransitionCompleted() {
    if (_state == SliderState.stopping) {
      setStateToResting();
    }
  }

  double get progress => controller.value;

  SliderState get state => _state;

  void _startAnimation() {
    controller.duration = const Duration(milliseconds: 500);
    controller.forward(from: 0.0);
    notifyListeners();
  }

  void setStateToStart() {
    _startAnimation();
    _state = SliderState.starting;
  }

  void setStateToStopping() {
    _startAnimation();
    _state = SliderState.stopping;
  }

  void setStateToSliding() {
    _state = SliderState.sliding;
  }

  void setStateToResting() {
    _state = SliderState.resting;
  }
}

enum SliderState {
  starting,
  resting,
  sliding,
  stopping,
}
