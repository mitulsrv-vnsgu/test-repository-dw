import 'controller/home_container_controller.dart';
import 'package:auto_identification_percentage/core/app_export.dart';
import 'package:auto_identification_percentage/presentation/explore_page/explore_page.dart';
import 'package:auto_identification_percentage/presentation/home_page/home_page.dart';
import 'package:auto_identification_percentage/presentation/profile_page/profile_page.dart';
import 'package:auto_identification_percentage/presentation/saved_recently_viewed_page/saved_recently_viewed_page.dart';
import 'package:auto_identification_percentage/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90002,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Mail:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.explorePage;
      case BottomBarEnum.Bookmark:
        return AppRoutes.savedRecentlyViewedPage;
      case BottomBarEnum.Unsplashj5almo1e8ru:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.explorePage:
        return ExplorePage();
      case AppRoutes.savedRecentlyViewedPage:
        return SavedRecentlyViewedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
