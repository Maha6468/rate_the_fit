import 'package:flutter/material.dart';
import 'package:rate_the_fit/coustom_widget/custom_routes.dart';
import 'package:rate_the_fit/practice.dart';
import 'package:rate_the_fit/screen/Profile_Flow/Someone_else.dart';
import 'package:rate_the_fit/screen/Sign_Up/Sign_up.dart';
import 'package:rate_the_fit/screen/home_flow/search.dart';
import 'package:rate_the_fit/screen/rating_flow/Rating_Flow_1.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/account_settings.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/faq.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/notification.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/notification_settings.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/preferences_2.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/privacy_&_policy.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/privacy_settings_2.dart';
import 'package:rate_the_fit/screen/Side_Bar_Flow/security_settings.dart';
import 'package:rate_the_fit/screen/home_flow/add_to_story.dart';
import 'package:rate_the_fit/screen/message_flow/chat_inner.dart';
import 'package:rate_the_fit/screen/home_flow/home.dart';
import 'package:rate_the_fit/screen/rating_flow/Rating_Flow_2.dart';
import 'package:rate_the_fit/splash_screen.dart';
import 'screen/Create_Post_Flow/create_post.dart';
import 'screen/Side_Bar_Flow/side_bar.dart';
import 'screen/message_flow/Chat_1.dart';
import 'screen/message_flow/chat_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rate The Fit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/chatInner",
      routes: AppRoutes.routes,

      //home: Home(),
      //home: Splash_Screen(),
      // home: Login(),
      //home: Sign_Up (),
      //home: Create_Post(),
      //home: MessageListScreen(),
      //home: Chat_1(),
      //home: Chat_2(),
      //home: Chat_Inner(),
      //home: CustomDrawer(),
      //home:CustomDrawer()
      // home: Account_Settings(),
      //home: Notification_Settings(),
      //home: Notifications(),
      //home: Preferences_2(),
      //home: Privacy_Settings_2(),
      //home: Security_Settings_2(),
      //home: Faq_Screen(),
      //home: PrivacyPolicyScreen(),
      //home: Someone_else(),
      //home: Add_To_Story(),
      // home: Rating_Home_1(),
      //home: Rating_Home_2(),
      // home: Search_1(),
    );
  }
}
