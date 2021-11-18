import 'package:drmid/helpers/ui_helper.dart';
import 'package:drmid/widgets/my_agenda.dart';
import 'package:drmid/widgets/search_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class SideMenu extends StatefulWidget {
  static String tag = '/MWDrawerScreen2';

  @override
  _SideMenu createState() => _SideMenu();
}

class _SideMenu extends State<SideMenu> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 1200));
      //scaffoldKey.currentState!.openDrawer();
    } catch (e) {
      print(e.toString()); //TODO: remove in prod @asaenz
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: const BoxDecoration(
            color: UiHelper.primary,
          ),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 5.0),
                  Container(
                    height: 90,
                    width: 90,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icons/avatar.svg',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Alex Saenz',
                    style: TextStyle(
                        color: UiHelper.onPrimary,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  45.height,
                  Row(
                    children: [
                      const Icon(Icons.home, color: UiHelper.onPrimary),
                      10.width,
                      const Text('Home', style: TextStyle(color: UiHelper.onPrimary)),
                    ],
                  ).onTap(() {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
                  }),
                  const Divider(),
                  15.height,
                  Row(
                    children: [
                      const Icon(Icons.person_search_outlined, color: UiHelper.onPrimary),
                      10.width,
                      const Text('Search', style: TextStyle(color: UiHelper.onPrimary)),
                    ],
                  ).onTap(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SearchDoctor()),
                    );
                  }),
                  const Divider(),
                  15.height,
                  Row(
                    children: [
                      const Icon(Icons.calendar_today_outlined, color: UiHelper.onPrimary),
                      10.width,
                      const Text('My agenda', style: TextStyle(color: UiHelper.onPrimary)),
                    ],
                  ).onTap(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyAgenda()),
                    );
                  }),
                  const Divider(),
                  15.height,
                  itemList(
                      const Icon(Icons.health_and_safety_outlined, color: UiHelper.onPrimary),
                      'My doctors'),
                  const Divider(),
                  15.height,
                  itemList(const Icon(Icons.message, color: UiHelper.onPrimary), 'Messages'),
                  const Divider(),
                  15.height,
                  itemList(const Icon(Icons.notifications, color: UiHelper.onPrimary),
                      'Notifications'),
                  const Divider(),
                  15.height,
                  itemList(const Icon(Icons.settings, color: UiHelper.onPrimary), 'Settings'),
                  const Divider(),
                  15.height,
                  itemList(const Icon(Icons.info_outline, color: UiHelper.onPrimary), 'Help'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget itemList(Widget icon, String title) {
    return Row(
      children: [
        icon,
        10.width,
        Text(title, style: const TextStyle(color: UiHelper.onPrimary)),
      ],
    ).onTap(() {
      /* Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen!),
      ); */
      scaffoldKey.currentState!.openEndDrawer();
      toasty(context, title);
    });
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 50, 0);
    path.quadraticBezierTo(size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(
        size.width, size.height - (size.height / 4), size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
