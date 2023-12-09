import 'package:deliveryapp/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/presentation/splash_screen/splash_screen.dart';
import 'package:deliveryapp/presentation/home_container_screen/home_container_screen.dart';
import 'package:deliveryapp/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:deliveryapp/presentation/profile_screen/profile_screen.dart';
import 'package:deliveryapp/presentation/account_screen/account_screen.dart';
import 'package:deliveryapp/presentation/food_details_screen/food_details_screen.dart';
import 'package:deliveryapp/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:deliveryapp/presentation/otp_verification_one_screen/otp_verification_one_screen.dart';
import 'package:deliveryapp/presentation/otp_verification_two_screen/otp_verification_two_screen.dart';
import 'package:deliveryapp/presentation/eatzo_card_screen/eatzo_card_screen.dart';
import 'package:deliveryapp/presentation/shop_page_one_screen/shop_page_one_screen.dart';
import 'package:deliveryapp/presentation/shop_page_screen/shop_page_screen.dart';
import 'package:deliveryapp/presentation/meal_plan_tab_container_screen/meal_plan_tab_container_screen.dart';
import 'package:deliveryapp/presentation/meal_plan_two_tab_container_screen/meal_plan_two_tab_container_screen.dart';
import 'package:deliveryapp/presentation/meal_plan_three_screen/meal_plan_three_screen.dart';
import 'package:deliveryapp/presentation/meal_plan_one_screen/meal_plan_one_screen.dart';
import 'package:deliveryapp/presentation/my_orders_upcoming_tab_container_screen/my_orders_upcoming_tab_container_screen.dart';
import 'package:deliveryapp/presentation/my_subscription_screen/my_subscription_screen.dart';
import 'package:deliveryapp/presentation/help_support_screen/help_support_screen.dart';
import 'package:deliveryapp/presentation/faqs_screen/faqs_screen.dart';
import 'package:deliveryapp/presentation/recharge_screen/recharge_screen.dart';
import 'package:deliveryapp/presentation/success_screen/success_screen.dart';
import 'package:deliveryapp/presentation/error_screen/error_screen.dart';
import 'package:deliveryapp/presentation/frame_fortynine_screen/frame_fortynine_screen.dart';
import 'package:deliveryapp/presentation/frame_thirteen_screen/frame_thirteen_screen.dart';
import 'package:deliveryapp/presentation/frame_nineteen_screen/frame_nineteen_screen.dart';
import 'package:deliveryapp/presentation/frame_twenty_screen/frame_twenty_screen.dart';
import 'package:deliveryapp/presentation/frame_two_screen/frame_two_screen.dart';
import 'package:deliveryapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String profileScreen = '/profile_screen';

  static const String accountScreen = '/account_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String otpVerificationOneScreen = '/otp_verification_one_screen';

  static const String otpVerificationTwoScreen = '/otp_verification_two_screen';

  static const String eatzoCardScreen = '/eatzo_card_screen';

  static const String shopPageOneScreen = '/shop_page_one_screen';

  static const String shopPageScreen = '/shop_page_screen';

  static const String mealPlanPage = '/meal_plan_page';

  static const String mealPlanTabContainerScreen =
      '/meal_plan_tab_container_screen';

  static const String mealPlanTwoPage = '/meal_plan_two_page';

  static const String mealPlanTwoTabContainerScreen =
      '/meal_plan_two_tab_container_screen';

  static const String mealPlanThreeScreen = '/meal_plan_three_screen';

  static const String mealPlanOneScreen = '/meal_plan_one_screen';

  static const String myOrdersUpcomingOnePage = '/my_orders_upcoming_one_page';

  static const String myOrdersUpcomingPage = '/my_orders_upcoming_page';

  static const String myOrdersUpcomingTabContainerScreen =
      '/my_orders_upcoming_tab_container_screen';

  static const String mySubscriptionScreen = '/my_subscription_screen';

  static const String helpSupportScreen = '/help_support_screen';

  static const String faqsScreen = '/faqs_screen';

  static const String rechargeScreen = '/recharge_screen';

  static const String successScreen = '/success_screen';

  static const String errorScreen = '/error_screen';

  static const String frameFortynineScreen = '/frame_fortynine_screen';

  static const String frameThirteenScreen = '/frame_thirteen_screen';

  static const String frameNineteenScreen = '/frame_nineteen_screen';

  static const String frameTwentyScreen = '/frame_twenty_screen';

  static const String frameTwoScreen = '/frame_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    addNewAddressScreen: (context) => AddNewAddressScreen(),
    profileScreen: (context) => ProfileScreen(),
    accountScreen: (context) => AccountScreen(),
    foodDetailsScreen: (context) => FoodDetailsScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    otpVerificationOneScreen: (context) => OtpVerificationOneScreen(),
    otpVerificationTwoScreen: (context) => OtpVerificationTwoScreen(),
    eatzoCardScreen: (context) => EatzoCardScreen(),
    shopPageOneScreen: (context) => ShopPageOneScreen(),
    shopPageScreen: (context) => ShopPageScreen(),
    mealPlanTabContainerScreen: (context) => MealPlanTabContainerScreen(),
    mealPlanTwoTabContainerScreen: (context) => MealPlanTwoTabContainerScreen(),
    mealPlanThreeScreen: (context) => MealPlanThreeScreen(),
    mealPlanOneScreen: (context) => MealPlanOneScreen(),
    myOrdersUpcomingTabContainerScreen: (context) =>
        MyOrdersUpcomingTabContainerScreen(),
    mySubscriptionScreen: (context) => MySubscriptionScreen(),
    helpSupportScreen: (context) => HelpSupportScreen(),
    faqsScreen: (context) => FaqsScreen(),
    rechargeScreen: (context) => RechargeScreen(),
    successScreen: (context) => SuccessScreen(),
    errorScreen: (context) => ErrorScreen(),
    frameFortynineScreen: (context) => FrameFortynineScreen(),
    frameThirteenScreen: (context) => FrameThirteenScreen(),
    frameNineteenScreen: (context) => FrameNineteenScreen(),
    frameTwentyScreen: (context) => FrameTwentyScreen(),
    frameTwoScreen: (context) => FrameTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    homePage: (context) => HomePage(),
  };
}
