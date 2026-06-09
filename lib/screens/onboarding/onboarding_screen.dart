import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:le_confectionery/utils/app_assets.dart';
import 'package:le_confectionery/utils/app_colors.dart';
import '../../base/base_ui.dart';
import '../../../utils/widget_extensions.dart';
import '../../utils/app_text.dart';
import 'onboarding_vm.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardingViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: const Color(0xffF6F0EA),

        body: PageView.builder(
          controller: model.pageController,
          itemCount: model.pages.length,

          onPageChanged: model.changePage,

          itemBuilder: (_, index) {
            final page = model.pages[index];

            return Padding(
              padding: EdgeInsets.symmetric(
                // horizontal: 25.w,
                // vertical: 20.h,
              ),
              child: Column(
                children: [

                  ///Image area
                  Expanded(
                    flex: 4,
                    child: page.widget
                  ),

                  SizedBox(height: 20.h),

                  ///Text section
                  AppText(
                    page.title,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                    textAlign: TextAlign.center,
                  ),
                  40.h.sbH,

                  ///Buttons
                  Padding(
                    padding: EdgeInsets.symmetric(
                       horizontal: 25.w,
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [

                        ///Previous
                        GestureDetector(
                          onTap: model.previousPage,
                          child: Container(
                            height: 38.sp,
                            width: 38.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                gradient: RadialGradient(
                                  radius: .8,
                                    colors: [
                                      AppColors.secondary,
                                      AppColors.primary
                                    ]
                                )
                            ),
                            child: Center(
                              child: Image.asset(AppAssets.previous, height: 16.sp,)
                            ),
                          ),
                        ),

                        ///Skip
                        GestureDetector(
                          onTap: model.skip,
                          child: Container(
                            height: 66.sp,
                            width: 66.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              gradient: RadialGradient(
                                radius: .8,
                                colors: [
                                  AppColors.secondary,
                                  AppColors.primary
                                ]
                              )
                            ),
                            child: Center(
                              child: AppText('Skip',
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,),
                            ),
                          ),
                        ),

                        ///Next
                        GestureDetector(
                          onTap: model.nextPage,
                          child: Container(
                            height: 38.sp,
                            width: 38.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                gradient: RadialGradient(
                                  radius: .8,
                                    colors: [
                                      AppColors.secondary,
                                      AppColors.primary
                                    ]
                                )
                            ),
                            child: Center(
                              child: Image.asset(AppAssets.next, height: 16.sp,)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.h),

                  ///Indicator
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: List.generate(
                      model.pages.length,
                          (i) => AnimatedContainer(
                        duration:
                        const Duration(
                          milliseconds: 300,
                        ),
                        margin:
                        EdgeInsets.all(4.w),
                        width:
                        model.currentIndex ==
                            i
                            ? 20.w
                            : 8.w,
                        height: 8.h,
                        decoration:
                        BoxDecoration(
                          color:
                          model.currentIndex ==
                              i
                              ? Colors.brown
                              : Colors.grey,
                          borderRadius:
                          BorderRadius.circular(
                              20.r),
                        ),
                      ),
                    ),
                  ),
                  20.h.sbH
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}