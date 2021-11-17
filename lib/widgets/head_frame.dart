import 'package:drmid/helpers/ui_helper.dart';
import 'package:drmid/model/cardModel.dart';
import 'package:drmid/screens/exploreList.dart';
import 'package:drmid/utils/AppConstant.dart';
import 'package:drmid/utils/AppWidget.dart';
import 'package:drmid/widgets/header.dart';
import 'package:drmid/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class HeadFrame extends StatefulWidget {
  const HeadFrame({Key? key}) : super(key: key);

  @override
  _HeadFrameState createState() => _HeadFrameState();
}

class _HeadFrameState extends State<HeadFrame> {
  int selectedPos = 1;
  late List<T5Bill> mListings;
  late List<messageThumbnail> messages;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
  }

  @override
  Widget build(BuildContext context) {
    var width = UiHelper.screenWidth(context);

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [
            Header(),
          ],
        ),
      ),
    );
  }

  Container myAppointments(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: messages.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 2, bottom: 2),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          text(messages[index].from, fontSize: textSizeSMedium),
                          text(messages[index].date,
                              fontSize: textSizeLargeMedium, textColor: UiHelper.onBackground),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                text(messages[index].preview,
                                    textColor: UiHelper.onBackground,
                                    fontSize: textSizeMedium,
                                    fontFamily: fontSemibold)
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(height: 0.5, color: Colors.grey)
              ],
            );
          }),
    );
  }

  static Container speciatiesWidget(BuildContext context) {
    return Container(
        height: 150,
        padding: const EdgeInsets.only(top: 14),
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          itemCount: cards.length,
          itemBuilder: (context, index) {
            //print('images path: ${cards[index].cardImage.toString()}');
            return Container(
              margin: const EdgeInsets.only(right: 14),
              height: 150,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(cards[index].cardBackground),
                  boxShadow: [
                    BoxShadow(
                      color: (Colors.grey[400])!,
                      blurRadius: 4.0,
                      spreadRadius: 0.0,
                      offset: const Offset(3, 3),
                    ),
                  ]
                  // image: DecorationImage(
                  //   image: AssetImage(cards[index].cardImage),
                  //   fit: BoxFit.fill,
                  // ),
                  ),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExploreList(
                              type: cards[index].doctor,
                            )),
                  );
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 29,
                        child: Icon(
                          cards[index].cardIcon,
                          size: 26,
                          color: Color(cards[index].cardBackground),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        cards[index].doctor,
                        style: GoogleFonts.lato(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }

  static Container recommendedForMe(BuildContext context) {
    return Container();
  }

  static Container scheduleAgain(BuildContext context) {
    return Container();
  }

  static Container agenda(BuildContext context) {
    return Container();
  }

  /* static Container messages(BuildContext context) {
    return Container();
   }
*/

  List<T5Bill> getListData() {
    List<T5Bill> list = [];
    var bill = T5Bill();
    bill.name = 'Electric bill';
    bill.day = '22';
    bill.amount = '\$155.00';
    bill.date = '10/2/2019';

    var bill1 = T5Bill();
    bill1.name = 'Water bill';
    bill1.day = '20';
    bill1.amount = '\$855.00';
    bill1.date = '10/2/2019';

    var bill2 = T5Bill();
    bill2.name = 'Water bill';
    bill2.day = '12';
    bill2.amount = '\$155.00';
    bill2.isPaid = true;
    bill2.date = '10/2/2019';

    var bill3 = T5Bill();
    bill3.name = 'Phone bill';
    bill3.day = '12';
    bill3.amount = '\$25.00';
    bill3.date = '10/2/2019';

    var bill4 = T5Bill();
    bill4.name = 'Internet bill';
    bill4.day = '11';
    bill4.amount = '\$70.00';
    bill4.date = '10/2/2019';

    var bill5 = T5Bill();
    bill5.name = 'Electric bill';
    bill5.day = '10';
    bill5.amount = '\$600.00';
    bill5.date = '10/2/2019';
    bill5.isPaid = true;

    list.add(bill);
    list.add(bill1);
    //list.add(bill2);
    //list.add(bill3);
    //list.add(bill4);
    //list.add(bill);
    //list.add(bill2);
    //list.add(bill);
    //list.add(bill);
    //list.add(bill1);
    //list.add(bill2);
    //list.add(bill3);
    //list.add(bill4);
    //list.add(bill);
    //list.add(bill1);
    //list.add(bill2);
    //list.add(bill3);
    //list.add(bill4);

    return list;
  }

  List<messageThumbnail> getMessages() {
    List<messageThumbnail> data = [];
    data.add(messageThumbnail(
        'Filomeno Lopez', '2021/10/19', 'Hey, hello, goog morning, how are you?'));
    data.add(messageThumbnail('Hector Estrada', '2021/10/20', 'Hey bud, how u doin?'));

    return data;
  }
}

class T5Bill {
  var name;
  var day;
  var date;
  var isPaid = false;
  final icon = Icons.money;
  var amount;
  var wallet = 'Mastercard';
}

class messageThumbnail {
  var from;
  var date;
  var preview;

  messageThumbnail(this.from, this.date, this.preview);
}
