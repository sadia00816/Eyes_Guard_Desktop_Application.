
import 'package:eye_guard_app/Screen/Routes/app_routes.dart';
import 'package:material_ui/material_ui.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      debugShowCheckedModeBanner:false,
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.pages,
    );
  }
}