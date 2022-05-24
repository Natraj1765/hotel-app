library gscarousel;

import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {

  static const Size kDefaultSize = const Size.square(9.0);
  static const EdgeInsets kDefaultSpacing = const EdgeInsets.all(6.0);
  static const ShapeBorder kDefaultShape = const CircleBorder();

  final int numberOfIndicator;
  final int position;
  final Color indicatorColor;
  final Color indicatorActiveColor;
  final Size indicatorSize;
  final Size indicatorActiveSize;
  final ShapeBorder indicatorShape;
  final ShapeBorder indicatorActiveShape;
  final EdgeInsets indicatorSpacing;

  CarouselIndicator(
      {
        required this.numberOfIndicator,
        this.position = 0,
        this.indicatorColor = Colors.grey,
        this.indicatorActiveColor = Colors.lightBlue,
        this.indicatorSize = kDefaultSize,
        this.indicatorActiveSize = kDefaultSize,
        this.indicatorShape = kDefaultShape,
        this.indicatorActiveShape = kDefaultShape,
        this.indicatorSpacing = kDefaultSpacing})
      : assert(numberOfIndicator != null),
        assert(position != null),
        assert(indicatorColor != null),
        assert(indicatorActiveColor != null),
        assert(indicatorSize != null),
        assert(indicatorActiveSize != null),
        assert(indicatorShape != null),
        assert(indicatorActiveShape != null),
        assert(indicatorSpacing != null),
        assert(position < numberOfIndicator,
        "The position must be inferior of numberOfDot (position start at 0). Example for active last dot: numberOfDot=3 / position=2");

  List<Widget> _buildIndicators() {
    List<Widget> indicators = [];
    for (int i = 0; i < (numberOfIndicator>5?5:numberOfIndicator); i++) {
      final color = (i == position) ? indicatorActiveColor : indicatorColor;
      final size = (i == position) ? indicatorActiveSize : indicatorSize;
      final shape = (i == position) ? indicatorActiveShape : indicatorShape;

      indicators.add(
        Container(
          width: size.width,
          height: size.height,
          margin: indicatorSpacing,
          decoration: ShapeDecoration(color: color, shape: shape),
        ),
      );
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: _buildIndicators(),
      ),
    );
  }

}