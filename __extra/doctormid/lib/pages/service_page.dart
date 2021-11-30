import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: getBody(size),
      bottomNavigationBar: getBottomNavigatonBar(),
    );
  }

  getBody(Size size) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              child: Center(
                child: Image.asset('assets/images/ic_construction_logo.png'),
              ),
            ),
            Column(
              children: [
                Text(
                  'SIMPLE & FACIL',
                  style: regularWhiteText24(Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Encuentra tu especialista\ny agenda una cita',
                  textAlign: TextAlign.center,
                  style: boldWhiteText24(Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Text(
                  'Donde buscas el servicio?',
                  style: regularWhiteText24(Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: size.width,
                  decoration: rectangularWhiteBoxDecorationWithRadius(4),
                  child: CustomizedButton(
                    textColor: Colors.grey,
                    verticalPadding: 16,
                    text: 'Escribe tu ubicacion',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  decoration:
                      rectangularAppBgColorBoxDecorationWithRadiusElevation(
                          20, 20, 20, 20, 4),
                  child: CustomizedButton(
                    textColor: Colors.white,
                    verticalPadding: 16,
                    text: 'Continuar',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  getBottomNavigatonBar() {
    return AppBottomBar();
  }
}
