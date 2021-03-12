import 'package:flutter/material.dart';

import '../constants.dart';

class Indicator extends StatelessWidget {
  final index;
  final pageIndex;
  const Indicator({
    Key key,
    this.index,
    this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: pageIndex == index ? selectedIndicatorColor : unselectedIndicatorColor,
      ),
    );
  }
}
