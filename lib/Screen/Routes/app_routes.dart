import 'package:get/get.dart';
import '../Authentication/login.dart';
import '../Authentication/register.dart';

class AppRoutes {
  static const  login = '/login';
  static const register = '/register';

  static final pages = [
  GetPage(
    name: login, 
    page: () => LoginPage(),
    ),

  GetPage(
    name: register, 
    page: () => RegisterPage(),
  ),
 ];
}