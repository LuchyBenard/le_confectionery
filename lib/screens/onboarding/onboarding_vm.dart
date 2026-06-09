import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_confectionery/utils/app_assets.dart';
import '../../base/base.vm.dart';

class OnboardingViewModel extends BaseViewModel {
  final PageController pageController = PageController();

  int currentIndex = 0;

  final List<OnboardingData> pages = [
    OnboardingData(
      widget: Stack(children: [
        Positioned(child: Image.asset(AppAssets.onb1Arc)),
        Positioned(top: 0, right: 0,
            child: Image.asset(AppAssets.onb1Pizza)),

        Positioned(top: 426, right: 0,
            child: Image.asset(AppAssets.onb1HalfDough, height: 109.sp,)),

        Positioned(top: 0, left: 0,
            child: Image.asset(AppAssets.onb1Wheat)),
        Positioned(top: 375.h, left: 15,
            child: Image.asset(AppAssets.dough)),
        Positioned(top: 143.h, left: 84.w,
            child: Image.asset(AppAssets.onboardingImage1)),
      ],),
      title:
      "Indulge in perfection: Taste our \nheavenly creations at \nLe Confectionary where every \nslice is a celebration!",
    ),
    OnboardingData(
      widget: Container(),
      title:
      "Made-to-Order Magic. Delivered \nFresh! Customize and receive your \ndream cake hassle-free.",
    ),
    OnboardingData(
      widget: Container(),
      title:
      "Indulge in Delightful Confections: \nTaste New Horizons. Affordably!",
    ),
  ];

  void changePage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void nextPage() {
    if (currentIndex < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to login/home
    }
  }

  void previousPage() {
    if (currentIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skip() {
    pageController.animateToPage(
      pages.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class OnboardingData {
  final Widget widget;
  final String title;

  OnboardingData({
    required this.widget,
    required this.title,
  });
}