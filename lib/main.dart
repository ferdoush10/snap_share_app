
import 'package:flutter/material.dart';
import 'package:snap_share_app/screens/profile_page.dart';
import 'package:snap_share_app/presentation/ui/screens/following_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:snap_share_app/presentation/screens/authentication/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snap Share',
      home: const WelcomeScreen(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

