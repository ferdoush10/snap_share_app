import 'package:flutter/material.dart';
import 'package:snap_share_app/presentation/ui/screens/following_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Follow Users',
      home: FollowUsersPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

