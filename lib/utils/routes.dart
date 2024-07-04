import 'package:brewvana/screens/dashboard_app.dart';
import 'package:brewvana/screens/login_page.dart';
import 'package:brewvana/screens/profile_page.dart';
// import 'package:coffee_shop/screens/promotions_screen.dart';
import 'package:brewvana/screens/registration_page.dart';
import 'package:brewvana/screens/settings.dart';
import 'package:brewvana/screens/welcome_page.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: (() => WelcomePage())),
    GetPage(name: "/loginpage", page: (() => LoginPage())),
    GetPage(name: "/registration", page: (() => RegistrationPage())),
    GetPage(name: "/menupage", page: (() => DashboardScreen())),
    GetPage(name: "/profilepage", page: (() => UserProfilePage())),
    GetPage(name: "/settings", page: (() => SettingsPage())),
    // GetPage(name: "/promotionscreen", page: (() => PromotionsScreen())),
  ];
}
