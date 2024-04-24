import 'package:flutter/material.dart';
import 'package:snap_share_app/presentation/screens/following_and_followers.dart';
import 'package:snap_share_app/presentation/ui/screens/following_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:snap_share_app/presentation/screens/authentication/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SociaLive',
      home: const FollowingAndFollowers(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

