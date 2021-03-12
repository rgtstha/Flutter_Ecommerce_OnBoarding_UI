import 'package:flutter/material.dart';

import '../components/onboarding_body.dart';
import '../components/onboarding_buttom_widget.dart';
import '../models/models.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => OnboardingBody(
                    title: onboardingData[index].titleText,
                    description: onboardingData[index].descriptionText,
                    imageURL: onboardingData[index].imageURL,
                  ),
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            OnBoardingButtomWidget(
              currentIndex: currentIndex,
              pageController: _pageController,
            ),
          ],
        ),
      ),
    ));
  }
}
