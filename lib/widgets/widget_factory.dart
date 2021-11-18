import 'package:drmid/helpers/app_helper.dart';
import 'package:drmid/helpers/auth_helper.dart';
import 'package:drmid/l10n/gen/app_localizations.dart';
import 'package:drmid/utils/MenuController.dart';
import 'package:drmid/utils/constants.dart';
import 'package:drmid/utils/responsive.dart';
import 'package:drmid/widgets/auth.dart';
import 'package:drmid/widgets/drawer.dart';
import 'package:drmid/widgets/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

abstract class WidgetFactory {
  static late MaterialApp app;

  static MaterialApp getApp(BuildContext context) {
    app = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppHelper.appName,
      home: AuthHelper.instance().isAnonymous() ? const Auth() : Dashboard(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xff00b88c),
      ),
      locale: const Locale('es', ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );

    return app;
  }

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme).apply(
        bodyColor: drawerTextColor,
      ),
      //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
      primarySwatch: Colors.blue,
    );
  }

  static SizedBox getDefaultSizedBox() {
    return const SizedBox(
      height: defaultPadding,
    );
  }

  static Scaffold getMidPage(BuildContext context, Widget wgt, String title) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: (Responsive.isDesktop(context)) ? null : SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(
              child: wgt,
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
