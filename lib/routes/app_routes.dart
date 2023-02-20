import 'package:auto_identification_percentage/presentation/splash_screen/splash_screen.dart';
import 'package:auto_identification_percentage/presentation/splash_screen/binding/splash_binding.dart';
import 'package:auto_identification_percentage/presentation/join_medium_screen/join_medium_screen.dart';
import 'package:auto_identification_percentage/presentation/join_medium_screen/binding/join_medium_binding.dart';
import 'package:auto_identification_percentage/presentation/sign_up_with_email_screen/sign_up_with_email_screen.dart';
import 'package:auto_identification_percentage/presentation/sign_up_with_email_screen/binding/sign_up_with_email_binding.dart';
import 'package:auto_identification_percentage/presentation/welcome_screen/welcome_screen.dart';
import 'package:auto_identification_percentage/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:auto_identification_percentage/presentation/interest_screen/interest_screen.dart';
import 'package:auto_identification_percentage/presentation/interest_screen/binding/interest_binding.dart';
import 'package:auto_identification_percentage/presentation/recommended_screen/recommended_screen.dart';
import 'package:auto_identification_percentage/presentation/recommended_screen/binding/recommended_binding.dart';
import 'package:auto_identification_percentage/presentation/sign_in_with_email_screen/sign_in_with_email_screen.dart';
import 'package:auto_identification_percentage/presentation/sign_in_with_email_screen/binding/sign_in_with_email_binding.dart';
import 'package:auto_identification_percentage/presentation/article_detail_screen/article_detail_screen.dart';
import 'package:auto_identification_percentage/presentation/article_detail_screen/binding/article_detail_binding.dart';
import 'package:auto_identification_percentage/presentation/create_post_screen/create_post_screen.dart';
import 'package:auto_identification_percentage/presentation/create_post_screen/binding/create_post_binding.dart';
import 'package:auto_identification_percentage/presentation/reading_list_screen/reading_list_screen.dart';
import 'package:auto_identification_percentage/presentation/reading_list_screen/binding/reading_list_binding.dart';
import 'package:auto_identification_percentage/presentation/search_history_screen/search_history_screen.dart';
import 'package:auto_identification_percentage/presentation/search_history_screen/binding/search_history_binding.dart';
import 'package:auto_identification_percentage/presentation/search_result_screen/search_result_screen.dart';
import 'package:auto_identification_percentage/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:auto_identification_percentage/presentation/new_saved_item_screen/new_saved_item_screen.dart';
import 'package:auto_identification_percentage/presentation/new_saved_item_screen/binding/new_saved_item_binding.dart';
import 'package:auto_identification_percentage/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:auto_identification_percentage/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String joinMediumScreen = '/join_medium_screen';

  static const String signUpWithEmailScreen = '/sign_up_with_email_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String interestScreen = '/interest_screen';

  static const String recommendedScreen = '/recommended_screen';

  static const String signInWithEmailScreen = '/sign_in_with_email_screen';

  static const String homePage = '/home_page';

  static const String articleDetailScreen = '/article_detail_screen';

  static const String explorePage = '/explore_page';

  static const String createPostScreen = '/create_post_screen';

  static const String readingListScreen = '/reading_list_screen';

  static const String savedRecentlyViewedPage = '/saved_recently_viewed_page';

  static const String searchHistoryScreen = '/search_history_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String newSavedItemScreen = '/new_saved_item_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: joinMediumScreen,
      page: () => JoinMediumScreen(),
      bindings: [
        JoinMediumBinding(),
      ],
    ),
    GetPage(
      name: signUpWithEmailScreen,
      page: () => SignUpWithEmailScreen(),
      bindings: [
        SignUpWithEmailBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: interestScreen,
      page: () => InterestScreen(),
      bindings: [
        InterestBinding(),
      ],
    ),
    GetPage(
      name: recommendedScreen,
      page: () => RecommendedScreen(),
      bindings: [
        RecommendedBinding(),
      ],
    ),
    GetPage(
      name: signInWithEmailScreen,
      page: () => SignInWithEmailScreen(),
      bindings: [
        SignInWithEmailBinding(),
      ],
    ),
    GetPage(
      name: articleDetailScreen,
      page: () => ArticleDetailScreen(),
      bindings: [
        ArticleDetailBinding(),
      ],
    ),
    GetPage(
      name: createPostScreen,
      page: () => CreatePostScreen(),
      bindings: [
        CreatePostBinding(),
      ],
    ),
    GetPage(
      name: readingListScreen,
      page: () => ReadingListScreen(),
      bindings: [
        ReadingListBinding(),
      ],
    ),
    GetPage(
      name: searchHistoryScreen,
      page: () => SearchHistoryScreen(),
      bindings: [
        SearchHistoryBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: newSavedItemScreen,
      page: () => NewSavedItemScreen(),
      bindings: [
        NewSavedItemBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
