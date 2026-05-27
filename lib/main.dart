import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:le_confectionery/screens/auth/login_screen.dart';

import 'package:le_confectionery/screens/splash/splash_screen.dart';

import 'data/services/navigation_service.dart';
import 'locator.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  //await GetStorage.init();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        navigatorKey: getIt<NavigationService>().navigatorKey,
        scaffoldMessengerKey: getIt<NavigationService>().snackBarKey,
        debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      ),
    );
  }
}
