import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:snap_share_app/search.dart';

void main(){
  runApp(MyApps());
}
class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Search(),
    );
  }
}
