import 'dart:ui';

class AppColors {
  AppColors._privateConstructors();
  static final AppColors _instance = AppColors._privateConstructors();
  factory AppColors() {
    return _instance;
  }
  //gradient color
  Color get primaryColor => const Color.fromARGB(255, 44, 13, 73);
  Color get secondaryColor => const Color.fromARGB(255, 66, 20, 110);

  Color get correctColor => const Color.fromARGB(255, 16, 241, 144);

  Color get wrongColor => const Color.fromARGB(255, 255, 21, 134);
  Color get actualColor => const Color.fromRGBO(33, 150, 243, 1);


}
