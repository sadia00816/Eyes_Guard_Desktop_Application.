import 'package:get/get.dart';
import '../Authentication/login.dart';
import '../Authentication/register.dart';

class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const registerPage = '/RegisterPage';

  static final pages = [
    GetPage(
      name: login, 
      page: () => const LoginPage(),
    ),
    GetPage(
      name: register, 
      page: () => RegisterPage(),
    ),
    GetPage(
      name: registerPage, 
      page: () => RegisterPage(),
    ),
  ];
}