import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_confectionery/screens/splash/splash_vm.dart';
import 'package:le_confectionery/utils/app_assets.dart';
import 'package:le_confectionery/utils/app_colors.dart';

import '../../../utils/widget_extensions.dart';
import '../../base/base_ui.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BaseView<SplashViewModel>(
        onModelReady: (model) {
         model.splash();
        },
        builder: (context, model,child) => Scaffold(
          backgroundColor: AppColors.background,
          body: Container(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
            height: height(context),
            width: width(context),
            child: Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.logo,
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }
}


// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body: SizedBox.expand(
//     child: Image.asset(
// 'assets/images/splash1.png',
// fit: BoxFit.cover,
// ),
// ),
//     );
//   }
// }

   