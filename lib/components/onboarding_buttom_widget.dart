import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/models.dart';
import '../screens/homepage.dart';
import 'indicator_widget.dart';

class OnBoardingButtomWidget extends StatelessWidget {
  const OnBoardingButtomWidget({
    Key key,
    @required this.currentIndex,
    @required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final int currentIndex;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: onboardingBottomColor,
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text("Skip"),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          Container(
            child: Row(
              children: List.generate(
                onboardingData.length,
                (index) => Indicator(index: index, pageIndex: currentIndex),
              ),
            ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text("Next"),
            ),
            onTap: () {
              _pageController.page == onboardingData.length - 1
                  ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()))
                  : _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
          ),
        ],
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
