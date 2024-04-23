import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController implements GetxService {
  final SharedPreferences sharedPreferences;

  ThemeController({required this.sharedPreferences}) {
    _loadCurrentTheme();
  }

  bool _darkTheme = true;

  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    //sharedPreferences.setBool(ShareKey.theme, _darkTheme);
    update();
  }

  void _loadCurrentTheme() async {
    //_darkTheme = sharedPreferences.getBool(ShareKey.theme) ?? false;
    update();
  }
}
