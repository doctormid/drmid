import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/json.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  getAppBar() {
    return PreferredSize(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Main Menu',
                    style: boldWhiteText14(Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(55));
  }

  getBody() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  menus.length,
                  (index) => GestureDetector(
                    onTap: () {
                      _navigateToScreen(index);
                    },
                    child: Column(
                      children: [
                        MenuItem(itemName: menus[index]),
                        (index == (menus.length - 1))
                            ? Container()
                            : Container(
                                height: 1,
                                decoration: appSeparationLineDecoration,
                              )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  void _navigateToScreen(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/login');
        break;
      case 1:
        Navigator.pushNamed(context, '/service');
        break;
      case 2:
        Navigator.pushNamed(context, '/otp');
        break;
      case 3:
        Navigator.pushNamed(context, '/register');
        break;
      case 4:
        Navigator.pushNamed(context, '/chats');
        break;
      case 5:
        Navigator.pushNamed(context, '/message');
        break;
      case 6:
        Navigator.pushNamed(context, '/bookingFirst');
        break;
      case 7:
        Navigator.pushNamed(context, '/bookingSecond');
        break;
      case 8:
        Navigator.pushNamed(context, '/deleteServiceFirst');
        break;
      case 9:
        Navigator.pushNamed(context, '/deleteServiceSecond');
        break;
      case 10:
        Navigator.pushNamed(context, '/deleteServiceThird');
        break;
      case 11:
        Navigator.pushNamed(context, '/deleteServiceFourth');
        break;
      case 12:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }
}
