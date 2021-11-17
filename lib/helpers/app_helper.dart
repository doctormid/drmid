import 'dart:convert';

import 'package:drmid/l10n/gen/app_localizations.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';
import 'package:drmid/helpers/auth_helper.dart';
import 'package:drmid/widgets/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:drmid/helpers/super_helper.dart';

abstract class AppHelper extends SuperHelper {
  static goLogin(BuildContext context) async {
    await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Auth(),
      ),
      (r) => false,
    );
    return;
  }

  static signOut(BuildContext context) async {
    await AuthHelper.instance().signOut();
    await AppHelper.goLogin(context);
    return;
  }

  static Iterable<LocalizationsDelegate<dynamic>>? getAppLocales() {
    return [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  static Iterable<Locale> getLocales() {
    return AppLocalizations.supportedLocales;
  }

  static Future<void> initApp() async {
    await AppHelper.boilerplateApp();
    await Firebase.initializeApp().whenComplete(() => null);

    return;
  }

  static bool isWeb() {
    return kIsWeb;
  }

  static String getOperativeSystem() {
    return Platform.operatingSystem;
  }

  static String getOSVersion() {
    return Platform.operatingSystemVersion;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isFuchsia() {
    return Platform.isFuchsia;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isLinux() {
    return Platform.isLinux;
  }

  static bool isMacOS() {
    return Platform.isMacOS;
  }

  static bool isWindows() {
    return Platform.isWindows;
  }

  static Future<void> boilerplateApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return;
  }

  static dynamic dynaSetting({
    dynamic web,
    dynamic mobile,
    dynamic desktop,
    dynamic android,
    dynamic ios,
    dynamic windows,
    dynamic macos,
    dynamic linux,
    dynamic fuchsia,
  }) {
    if (isWeb()) return web;

    if ((isAndroid() || isIOS()) && (ios == null && android == null)) return mobile;

    if ((isWindows() || isLinux() || isFuchsia()) &&
        (windows == null && linux == null && macos == null && fuchsia == null)) return desktop;

    if (isAndroid()) return android;

    if (isIOS()) return ios;

    if (isWindows()) return windows;

    if (isMacOS()) return macos;

    if (isLinux()) return linux;

    if (isFuchsia()) return fuchsia;
  }

  static Future<List<dynamic>?> loadDataFromJson(BuildContext context) async {
    final fakeData =
        await DefaultAssetBundle.of(context).loadString('assets/integrations/map_point.json');
    return json.decode(fakeData.toString());
  }

  String intToHex(int i) {
    var s = i.toRadixString(16);
    if (s.length == 8) {
      return '#' + s.substring(2).toUpperCase();
    } else {
      return '#' + s.toUpperCase();
    }
  }

  static Widget networkImage(String? image,
      {String aPlaceholder = 'images/integrations/img/placeholder.png',
      double? aWidth,
      double? aHeight,
      var fit = BoxFit.fill}) {
    return image != null && image.isNotEmpty
        ? FadeInImage(
            placeholder: AssetImage(aPlaceholder),
            image: NetworkImage(image),
            width: aWidth,
            height: aHeight,
            fit: fit,
          )
        : Image.asset(
            aPlaceholder,
            width: aWidth,
            height: aHeight,
            fit: BoxFit.fill,
          );
  }

  static Widget loadingWidgetMaker() {
    return Container(
      alignment: Alignment.center,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        margin: const EdgeInsets.all(4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Container(
          width: 45,
          height: 45,
          padding: const EdgeInsets.all(8.0),
          child: const CircularProgressIndicator(strokeWidth: 3),
        ),
      ),
    );
  }

  static const appName = 'DoctorMid';
  static const linux = 'linux';
  static const macos = 'macos';
  static const windows = 'windows';
  static const android = 'android';
  static const ios = 'ios';
  static const fuchsia = 'fuchsia';
  static const initialRoute = '/';
}
