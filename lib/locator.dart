import 'package:bucx/pages/auth/forgot_password/forgot_password_vm.dart';
import 'package:bucx/pages/auth/sign_in/sign_in.vm.dart';
import 'package:bucx/pages/auth/sign_up/sign_up.vm.dart';
import 'package:bucx/pages/base/base.vm.dart';
import 'package:bucx/pages/home/accounts/accounts_vm.dart';
import 'package:bucx/pages/home/add_money/add_money_vm.dart';
import 'package:bucx/pages/home/cards/cards_vm.dart';
import 'package:bucx/pages/home/dashboard/dashboard_vm.dart';
import 'package:bucx/pages/home/home_vm.dart';
import 'package:bucx/pages/home/profiles/add_bank_account/add_bank_account_vm.dart';
import 'package:bucx/pages/home/profiles/profiles_vm.dart';
import 'package:bucx/pages/home/send_money/send_crypto/send_to_crypto_vm.dart';
import 'package:bucx/pages/home/send_money/send_money_to_bucx_user/send_to_bucx_vm.dart';
import 'package:bucx/pages/home/send_money/send_money_vm.dart';
import 'package:bucx/pages/home/send_money/send_to_bank/send_to_bank_vm.dart';
import 'package:bucx/pages/home/send_money/send_to_us_account/send_to_us_vm.dart';
import 'package:bucx/pages/introduction/onboarding/onboarding_vm.dart';
import 'package:bucx/pages/introduction/splash_screen/splash.vm.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'data/services/app_cache.dart';
import 'data/services/navigation_service.dart';
import 'data/services/remote_service.dart';
import 'data/services/storage-service.dart';
import 'data/services/user_services.dart';


GetIt getIt = GetIt.I;

void setupLocator() {
  setupDio();

  //Services
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<StorageService>(() => StorageService());
  getIt.registerLazySingleton<AppCache>(() => AppCache());
  getIt.registerLazySingleton<UserServices>(() => UserServices());
  getIt.registerLazySingleton<RemoteServices>(
          () => RemoteServices(getIt<Dio>(), getIt<UserServices>()));
  registerViewModel();
}

void setupDio() {
  getIt.registerFactory(() {
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
// customization
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90));
    return dio;
  });
}

void registerViewModel() {
  //View Model
  getIt.registerFactory<BaseViewModel>(() => BaseViewModel());
  getIt.registerFactory<SplashViewModel>(() => SplashViewModel());
  getIt.registerFactory<SignUpViewModel>(() => SignUpViewModel());
  getIt.registerFactory<SignInViewModel>(() => SignInViewModel());
  //getIt.registerFactory<SecureAccountViewModel>(() => SecureAccountViewModel());
  getIt.registerFactory<OnboardingViewModel>(() => OnboardingViewModel());
  getIt.registerFactory<ForgotPasswordViewModel>(() => ForgotPasswordViewModel());
  getIt.registerFactory<CardsViewModel>(()=> CardsViewModel());
  getIt.registerFactory<ProfilesViewModel>(() => ProfilesViewModel());
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel());
  getIt.registerFactory<BottomNavViewModel>(() => BottomNavViewModel());
  getIt.registerFactory<SendMoneyViewModel>(() => SendMoneyViewModel());
  getIt.registerFactory<SendToUSViewModel>(() => SendToUSViewModel());
  getIt.registerFactory<AccountsViewModel>(() =>AccountsViewModel());
  getIt.registerFactory<AddMoneyViewModel>(() => AddMoneyViewModel());
  getIt.registerFactory<SendToBankViewModel>(() =>SendToBankViewModel());
  getIt.registerFactory<SendToCryptoViewModel>(() =>SendToCryptoViewModel());
  getIt.registerFactory<SendToBucxUserViewModel>(() =>SendToBucxUserViewModel());
  getIt.registerFactory<AddBankAccountViewModel>(() =>AddBankAccountViewModel());

}
