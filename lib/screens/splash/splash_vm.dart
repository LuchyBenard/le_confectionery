import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';

import '../../base/base.vm.dart';
import '../../data/core/storage/boxes.dart';
import '../onboarding/onboarding_screen.dart';

class SplashViewModel extends BaseViewModel {
  late  int currentPageIndex = 0;
  final pageController = PageController(initialPage: 0);

  bool getStarted =false;
  // Delay Splash Screen for 4 sec
  splash() async {
    final box = GetStorage();
    String? userToken = box.read(Boxes.userToken);
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    //navigationService.navigateToReplaceWidget(const OnboardingView());
    if(userToken==null){
      navigationService.navigateToReplaceWidget(const OnboardingScreen());
    }else{
      //navigationService.navigateToReplaceWidget(const BottomNav(selectedIndex: 0));
      // navigationService.navigateToReplace(AppRoutes.driver);
      //
    }
  }


}