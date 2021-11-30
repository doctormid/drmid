import 'package:doctor_mid/pages/booking_first_page.dart';
import 'package:doctor_mid/pages/booking_second_page.dart';
import 'package:doctor_mid/pages/chat_message_page.dart';
import 'package:doctor_mid/pages/chats_page.dart';
import 'package:doctor_mid/pages/delete_service_decond.dart';
import 'package:doctor_mid/pages/delete_service_first.dart';
import 'package:doctor_mid/pages/delete_service_fourth.dart';
import 'package:doctor_mid/pages/delete_service_third.dart';
import 'package:doctor_mid/pages/login_page.dart';
import 'package:doctor_mid/pages/main_menu.dart';
import 'package:doctor_mid/pages/otp_page.dart';
import 'package:doctor_mid/pages/profile_page.dart';
import 'package:doctor_mid/pages/registration_page.dart';
import 'package:doctor_mid/pages/service_page.dart';
import 'package:doctor_mid/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic>? generateRotue(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => MainMenu());
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/profile':
        return MaterialPageRoute(builder: (context) => ProfilePage());
      case '/otp':
        return MaterialPageRoute(builder: (context) => OTPPage());
      case '/register':
        return MaterialPageRoute(builder: (context) => RegistrationPage());
      case '/service':
        return MaterialPageRoute(builder: (context) => ServicePage());
      case '/chats':
        return MaterialPageRoute(builder: (context) => ChatsPage());
      case '/message':
        return MaterialPageRoute(builder: (context) => ChatMessagePage());
      case '/bookingFirst':
        return MaterialPageRoute(builder: (context) => BookingFirstPage());
      case '/bookingSecond':
        return MaterialPageRoute(builder: (context) => BookingSecondPage());
      case '/deleteServiceFirst':
        return MaterialPageRoute(builder: (context) => DeleteServiceFirst());
      case '/deleteServiceSecond':
        return MaterialPageRoute(builder: (context) => DeleteServiceSecond());
      case '/deleteServiceThird':
        return MaterialPageRoute(builder: (context) => DeleteServiceThird());
      case '/deleteServiceFourth':
        return MaterialPageRoute(builder: (context) => DeleteServiceFourth());
    }
  }
}
