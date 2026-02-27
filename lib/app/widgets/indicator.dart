import 'dart:math';

import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int length;
  final int currentIndex;
  final Axis direction;
  final double size;
  final double selectedSize;
  final double gap;
  final double dotGap;

  const PageIndicator({
    required this.length,
    required this.currentIndex,
    this.direction = Axis.horizontal,
    this.size = 5.5,
    this.selectedSize = 8,
    this.gap = 4.0,
    this.dotGap = 1.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (direction) {
      case Axis.horizontal:
        return SizedBox(
          height: max(size, selectedSize),
          child: _buildIndicators(),
        );
      case Axis.vertical:
        return SizedBox(
          height: (max(size, selectedSize) + gap) * length,
          child: _buildIndicators(),
        );
    }
  }

  ListView _buildIndicators() {
    return ListView.separated(
      itemBuilder: (context, index) => currentIndex != index
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColorLight,
              ),
              height: size,
              width: size,
            )
          : Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 0.8,
                ),
              ),
              height: selectedSize,
              width: selectedSize,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.all(dotGap),
              ),
            ),
      itemCount: length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: direction,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: gap,
          width: gap,
        );
      },
    );
  }
}
