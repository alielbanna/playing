import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsService extends GetxService {
  late GetStorage _box;

  // SettingRepository _settingsRepo;

  SettingsService() {
    // _settingsRepo = SettingRepository();
    _box = GetStorage();
  }

  Future<SettingsService> init() async {
    // setting.value = await _settingsRepo.get();
    // // setting.value.modules = await _settingsRepo.getModules();
    // await getAddress();
    return this;
  }

  ThemeData getLightTheme() {
    return ThemeData(
        useMaterial3: true,
        fontFamily: "Cairo",
        // primaryColor: MColors.primaryBackgroundColor,
        // primaryColorDark: MColors.primaryColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 4,
            // foregroundColor: MColors.white,
            // backgroundColor: MColors.primaryBackgroundColor,
        ),
        brightness: Brightness.light,
        // hintColor: MColors.metaTextColor,
        // focusColor: MColors.gray,
        // hintColor: MColors.hint_color,
        // scaffoldBackgroundColor: MColors.primaryColor,
        textButtonTheme: TextButtonThemeData(
          // style: TextButton.styleFrom(foregroundColor: MColors.primaryBackgroundColor),
        ),
        appBarTheme:    const AppBarTheme(
            scrolledUnderElevation:0.0 ,
            elevation: 0.0,
            // color: MColors.primaryColor,
            // backgroundColor: MColors.primaryColor,
            // systemOverlayStyle: SystemUiOverlayStyle(
            //     statusBarColor: Colors.transparent,
            //     statusBarIconBrightness: Brightness.dark,
            //     statusBarBrightness: Brightness.light)
        ),
        bottomSheetTheme: const BottomSheetThemeData(
            // backgroundColor: MColors.primaryColor
        ),
        colorScheme: const ColorScheme.light(
            brightness: Brightness.light,
            // primary: MColors.primaryBackgroundColor,
            // onPrimary: MColors.textColor2,
            // primaryContainer: MColors.primaryColor,
            // onPrimaryContainer: MColors.metaTextColor,
            // inversePrimary: MColors.primaryColorDark,
            // secondary: MColors.colorPrimaryGradient,
            // onSecondary: MColors.white,
            // background: MColors.primaryColor,
            // onBackground: MColors.textColor,
            // surface: MColors.cardBackgroundColor,
            // onSurface: MColors.textColor,
            // outline: MColors.primaryColorDark2
    ),
        // textSelectionTheme:
        //     const TextSelectionThemeData(selectionColor: MColors.primaryBackgroundColor),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              // color: MColors.textColor,
            ),
            bodySmall: TextStyle(
                // color: MColors.metaTextColor.withOpacity(0.8),
                fontSize: 13.sp)));
  }

  ThemeData getDarkTheme() {
    return ThemeData(
        useMaterial3: true,
        fontFamily: "Cairo",
        // primaryColor: MColors.primaryColorDark,
        // primaryColorDark: MColors.secondColor,
        // cursorColor: MColors.accentColor,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            elevation: 4,
            // foregroundColor: MColors.white,
            // backgroundColor: MColors.accentColor
        ),
        // scaffoldBackgroundColor: MColors.primaryColorDark,
        brightness: Brightness.dark,
        // focusColor: MColors.accentColor,
        textButtonTheme: TextButtonThemeData(
          // style: TextButton.styleFrom(foregroundColor: MColors.primaryColorDark),
        ),
        colorScheme: const ColorScheme.dark(
            brightness: Brightness.dark,
            // primary: MColors.primaryColorDark,
            // onPrimary: MColors.textColorDark,
            // primaryContainer: MColors.primaryColorDark,
            // onPrimaryContainer: MColors.metaTextColorDark,
            // inversePrimary: MColors.primaryColor,
            // secondary: MColors.accentColor,
            // onSecondary: MColors.white,
            // background: MColors.primaryColorDark,
            // onBackground: MColors.cardBackgroundColorDark,
            // surface: MColors.cardBackgroundColorDark,
            // onSurface: MColors.textColorDark,
            // outline: MColors.primaryColorDark
    ),
        textTheme: TextTheme(
            bodyMedium: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w600,
                // color: MColors.white,
                height: 1.2),
            bodySmall: TextStyle(
                // color: MColors.metaTextColorDark.withOpacity(0.8),
                fontSize: 13.sp)));
  }

  // ThemeData getWebLightTheme() {
  //   return ThemeData(
  //       primaryColor: Colors.white,
  //       floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 0, foregroundColor: Colors.white),
  //       brightness: Brightness.light,
  //       // dividerColor: Ui.parseColor(setting.value.accentColor, opacity: 0.1),
  //       // focusColor: Ui.parseColor(setting.value.accentColor),
  //       // hintColor: MColors.secondColor,
  //       textButtonTheme: TextButtonThemeData(
  //         style: TextButton.styleFrom(primary: MColors.mainColor),
  //       ),
  //       colorScheme: ColorScheme.light(
  //         primary: MColors.mainColor,
  //         secondary: MColors.mainColor,
  //       ),
  //       textTheme: GoogleFonts.getTextTheme(
  //         _getLocale().toString().startsWith('ar') ? 'Cairo' : 'Poppins',
  //         TextTheme(
  //           headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: MColors.mainColor, height: 1.3),
  //           headline5: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: MColors.secondColor, height: 1.3),
  //           headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400, color: MColors.secondColor, height: 1.3),
  //           headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: MColors.secondColor, height: 1.3),
  //           headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: MColors.mainColor, height: 1.4),
  //           headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w300, color: MColors.secondColor, height: 1.4),
  //           subtitle2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: MColors.secondColor, height: 1.2),
  //           subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: MColors.mainColor, height: 1.2),
  //           bodyText2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: MColors.secondColor, height: 1.2),
  //           bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: MColors.secondColor, height: 1.2),
  //           caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: Ui.parseColor(setting.value.accentColor), height: 1.2),
  //         ),
  //       ));
  // }

  // ThemeData getWebDarkTheme() {
  //   return ThemeData(
  //       primaryColor: Color(0xFF252525),
  //       floatingActionButtonTheme: FloatingActionButtonThemeData(elevation: 0),
  //       scaffoldBackgroundColor: Color(0xFF2C2C2C),
  //       brightness: Brightness.dark,
  //       dividerColor: Ui.parseColor(setting.value.accentDarkColor, opacity: 0.1),
  //       focusColor: Ui.parseColor(setting.value.accentDarkColor),
  //       hintColor: Ui.parseColor(setting.value.secondDarkColor),
  //       toggleableActiveColor: Ui.parseColor(setting.value.mainDarkColor),
  //       textButtonTheme: TextButtonThemeData(
  //         style: TextButton.styleFrom(primary: MColors.mainColor),
  //       ),
  //       colorScheme: ColorScheme.dark(
  //         primary: Ui.parseColor(setting.value.mainDarkColor),
  //         secondary: Ui.parseColor(setting.value.mainDarkColor),
  //       ),
  //       textTheme: GoogleFonts.getTextTheme(
  //           _getLocale().toString().startsWith('ar') ? 'Cairo' : 'Poppins',
  //           TextTheme(
  //             headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.mainDarkColor), height: 1.3),
  //             headline5: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.3),
  //             headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.3),
  //             headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.3),
  //             headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700, color: Ui.parseColor(setting.value.mainDarkColor), height: 1.4),
  //             headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w300, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.4),
  //             subtitle2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.2),
  //             subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Ui.parseColor(setting.value.mainDarkColor), height: 1.2),
  //             bodyText2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.2),
  //             bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Ui.parseColor(setting.value.secondDarkColor), height: 1.2),
  //             caption: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300, color: Ui.parseColor(setting.value.accentDarkColor), height: 1.2),
  //           )));
  // }

  // String _getLocale() {
  //   String _locale = GetStorage().read<String>('language');
  //   if (_locale == null || _locale.isEmpty) {
  //     _locale = "en";
  //   }
  //   return _locale;
  // }

  // ThemeMode getThemeMode() {
  //   String _themeMode = GetStorage().read<String>('theme_mode');
  //   switch (_themeMode) {
  //     case 'ThemeMode.light':
  //       SystemChrome.setSystemUIOverlayStyle(
  //         SystemUiOverlayStyle.light
  //             .copyWith(systemNavigationBarColor: Colors.black12),
  //       );
  //       return ThemeMode.light;
  //     case 'ThemeMode.dark':
  //       SystemChrome.setSystemUIOverlayStyle(
  //         SystemUiOverlayStyle.dark
  //             .copyWith(systemNavigationBarColor: Colors.black87),
  //       );
  //       return ThemeMode.dark;
  //     case 'ThemeMode.system':
  //       return ThemeMode.system;
  //     default:
  //       SystemChrome.setSystemUIOverlayStyle(
  //         SystemUiOverlayStyle.light
  //             .copyWith(systemNavigationBarColor: Colors.black12),
  //       );
  //       return ThemeMode.light;
  //   }
  // }
  //
  final _key = 'isDarkMode';

  ThemeMode get theme => loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool loadThemeFromBox() => _box.read(_key) ?? false;

  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!loadThemeFromBox());
  }

  // final Uri _url = Uri.parse('https://gdawel.app');
  // void launchURL({required Uri url}) async {
  //   if (!await launchUrl(url)) throw 'Could not launch $url';
  // }
}