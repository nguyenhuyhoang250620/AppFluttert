import 'package:my_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:my_app/presentation/calendar_screen/calendar_screen.dart';
import 'package:my_app/presentation/calendar_screen/binding/calendar_binding.dart';
import 'package:my_app/presentation/insights_screen/insights_screen.dart';
import 'package:my_app/presentation/insights_screen/binding/insights_binding.dart';
import 'package:my_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:my_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:my_app/presentation/search_screen/search_screen.dart';
import 'package:my_app/presentation/search_screen/binding/search_binding.dart';
import 'package:my_app/presentation/content_screen/content_screen.dart';
import 'package:my_app/presentation/content_screen/binding/content_binding.dart';
import 'package:my_app/presentation/profile_posts_screen/profile_posts_screen.dart';
import 'package:my_app/presentation/profile_posts_screen/binding/profile_posts_binding.dart';
import 'package:my_app/presentation/images_screen/images_screen.dart';
import 'package:my_app/presentation/images_screen/binding/images_binding.dart';
import 'package:my_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:my_app/presentation/feed_screen/feed_screen.dart';
import 'package:my_app/presentation/feed_screen/binding/feed_binding.dart';
import 'package:my_app/presentation/market_screen/market_screen.dart';
import 'package:my_app/presentation/market_screen/binding/market_binding.dart';
import 'package:my_app/presentation/gallery_screen/gallery_screen.dart';
import 'package:my_app/presentation/gallery_screen/binding/gallery_binding.dart';
import 'package:my_app/presentation/compose_screen/compose_screen.dart';
import 'package:my_app/presentation/compose_screen/binding/compose_binding.dart';
import 'package:my_app/presentation/blog_post_screen/blog_post_screen.dart';
import 'package:my_app/presentation/blog_post_screen/binding/blog_post_binding.dart';
import 'package:my_app/presentation/walkthrough_screen/walkthrough_screen.dart';
import 'package:my_app/presentation/walkthrough_screen/binding/walkthrough_binding.dart';
import 'package:my_app/presentation/radios_screen/radios_screen.dart';
import 'package:my_app/presentation/radios_screen/binding/radios_binding.dart';
import 'package:my_app/presentation/market_one_screen/market_one_screen.dart';
import 'package:my_app/presentation/market_one_screen/binding/market_one_binding.dart';
import 'package:my_app/presentation/profile_menu_screen/profile_menu_screen.dart';
import 'package:my_app/presentation/profile_menu_screen/binding/profile_menu_binding.dart';
import 'package:my_app/presentation/expenses_screen/expenses_screen.dart';
import 'package:my_app/presentation/expenses_screen/binding/expenses_binding.dart';
import 'package:my_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:my_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';
import 'package:my_app/presentation/bottomtab/bottomtab.dart';

class AppRoutes {
  static String signUpScreen = '/sign_up_screen';
  static String calendarScreen = '/calendar_screen';

  static String insightsScreen = '/insights_screen';
  static String searchScreen = '/search_screen';

  static String contentScreen = '/content_screen';

  static String profilePostsScreen = '/profile_posts_screen';

  static String imagesScreen = '/images_screen';

  static String logInScreen = '/log_in_screen';

  static String feedScreen = '/feed_screen';

  static String marketScreen = '/market_screen';

  static String galleryScreen = '/gallery_screen';

  static String composeScreen = '/compose_screen';

  static String blogPostScreen = '/blog_post_screen';

  static String walkthroughScreen = '/walkthrough_screen';

  static String radiosScreen = '/radios_screen';

  static String marketOneScreen = '/market_one_screen';

  static String profileMenuScreen = '/profile_menu_screen';

  static String expensesScreen = '/expenses_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/app_navigation_screen';

  static String bottomScreen = '/bottom_screen';

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: calendarScreen,
      page: () => CalendarScreen(),
      bindings: [
        CalendarBinding(),
      ],
    ),
    GetPage(
      name: insightsScreen,
      page: () => InsightsScreen(),
      bindings: [
        InsightsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: contentScreen,
      page: () => ContentScreen(),
      bindings: [
        ContentBinding(),
      ],
    ),
    GetPage(
      name: profilePostsScreen,
      page: () => ProfilePostsScreen(),
      bindings: [
        ProfilePostsBinding(),
      ],
    ),
    GetPage(
      name: imagesScreen,
      page: () => ImagesScreen(),
      bindings: [
        ImagesBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: feedScreen,
      page: () => FeedScreen(),
      bindings: [
        FeedBinding(),
      ],
    ),
    GetPage(
      name: marketScreen,
      page: () => MarketScreen(),
      bindings: [
        MarketBinding(),
      ],
    ),
    GetPage(
      name: galleryScreen,
      page: () => GalleryScreen(),
      bindings: [
        GalleryBinding(),
      ],
    ),
    GetPage(
      name: composeScreen,
      page: () => ComposeScreen(),
      bindings: [
        ComposeBinding(),
      ],
    ),
    GetPage(
      name: blogPostScreen,
      page: () => BlogPostScreen(),
      bindings: [
        BlogPostBinding(),
      ],
    ),
    GetPage(
      name: walkthroughScreen,
      page: () => WalkthroughScreen(),
      bindings: [
        WalkthroughBinding(),
      ],
    ),
    GetPage(
      name: radiosScreen,
      page: () => RadiosScreen(),
      bindings: [
        RadiosBinding(),
      ],
    ),
    GetPage(
      name: marketOneScreen,
      page: () => MarketOneScreen(),
      bindings: [
        MarketOneBinding(),
      ],
    ),
    GetPage(
      name: profileMenuScreen,
      page: () => ProfileMenuScreen(),
      bindings: [
        ProfileMenuBinding(),
      ],
    ),
    GetPage(
      name: expensesScreen,
      page: () => ExpensesScreen(),
      bindings: [
        ExpensesBinding(),
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
      page: () => CalendarScreen(),
      bindings: [
        CalendarBinding(),
      ],
    ),
    GetPage(
      name: bottomScreen,
      page: () => BottomTab(),
    )
  ];
}
