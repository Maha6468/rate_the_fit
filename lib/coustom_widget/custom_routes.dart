import 'package:flutter/material.dart';
import 'package:rate_the_fit/splash_screen.dart';
import '../screen/Create_Post_Flow/create_post.dart';
import '../screen/Profile_Flow/Someone_else.dart';
import '../screen/Side_Bar_Flow/account_settings.dart';
import '../screen/Side_Bar_Flow/faq.dart';
import '../screen/Side_Bar_Flow/notification.dart';
import '../screen/Side_Bar_Flow/notification_settings.dart';
import '../screen/Side_Bar_Flow/preferences_2.dart';
import '../screen/Side_Bar_Flow/privacy_&_policy.dart';
import '../screen/Side_Bar_Flow/privacy_settings_2.dart';
import '../screen/Side_Bar_Flow/security_settings.dart';
import '../screen/Side_Bar_Flow/side_bar.dart';
import '../screen/Sign_Up/Sign_up.dart';
import '../screen/home_flow/add_to_story.dart';
import '../screen/home_flow/home.dart';
import '../screen/home_flow/search.dart';
import '../screen/log_In/Login.dart';
import '../screen/log_In/otp_varifications.dart';
import '../screen/message_flow/Chat_1.dart';
import '../screen/message_flow/chat_2.dart';
import '../screen/message_flow/chat_inner.dart';
import '../screen/rating_flow/Rating_Flow_1.dart';
import '../screen/rating_flow/Rating_Flow_2.dart';
import '../screen/rating_flow/rating_flow_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    "/": (context) => Splash_Screen(),
    "/login": (context) => Login(),
    "/otp": (context) => OTP_Varification(),
    "/home": (context) => Home(),
    "/signup": (context) => Sign_Up(),
    "/createPost": (context) => Create_Post(),
    "/chat1": (context) => Chat_1(),
    "/chat2": (context) => Chat_2(),
    "/chatInner": (context) => Chat_Inner(),
    "/sidebar": (context) => SideBar(),
    "/accountSettings": (context) => Account_Settings(),
    "/notificationSettings": (context) => Notification_Settings(),
    "/notifications": (context) => Notifications(),
    "/preferences": (context) => Preferences_2(),
    "/privacySettings": (context) => Privacy_Settings_2(),
    "/securitySettings": (context) => Security_Settings_2(),
    "/faq": (context) => Faq_Screen(),
    "/privacyPolicy": (context) => PrivacyPolicyScreen(),
    "/someoneElse": (context) => Someone_else(),
    "/addStory": (context) => Add_To_Story(),
    "/rating1": (context) => Rating_Home_1(),
    "/rating2": (context) => Rating_Home_2(),
    "/ratingflowscreen": (context) => RatingFlowScreen(),
    "/search_1": (context) => Search_1(),
  };
}