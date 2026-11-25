import 'package:get/get.dart';
import 'package:material_ui/material_ui.dart';

class AuthMiddleware extends GetMiddleware{
  @override 
  RouteSettings? redirect(String ? route){
    bool isLoggedIn = false;

    if(!isLoggedIn){
      return const RouteSettings(name:"/login");
    }
  }
} 