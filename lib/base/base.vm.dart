import 'package:flutter/cupertino.dart';

import '../data/services/navigation_service.dart';
import '../locator.dart';



class BaseViewModel extends ChangeNotifier {
  // ViewState _viewState = ViewState.Idle;
  // String? errorMessage;
  // StorageService storageService = getIt<StorageService>();
  NavigationService navigationService = getIt<NavigationService>();
  // RemoteServices remoteServices = getIt<RemoteServices>();
  // UserServices userService = getIt<UserServices>();
  // AppCache cache = getIt<AppCache>();

  // ViewState get viewState => _viewState;
  //
  // set viewState(ViewState newState) {
  //   _viewState = newState;
  //   notifyListeners();
  // }

  // void setError(String? error) {
  //   errorMessage = error;
  //   notifyListeners();
  // }

  bool isLoading = false;

  void startLoader() {
    if (!isLoading) {
      isLoading = true;
      //viewState = ViewState.Loading;
      notifyListeners();
    }
  }

  void stopLoader() {
    if (isLoading) {
      isLoading = false;
      //viewState = ViewState.Loading;
      notifyListeners();
    }
  }
}
