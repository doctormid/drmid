import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendaFirstScreen extends StatefulWidget {
  @override
  _AgendaFirstScreenState createState() => _AgendaFirstScreenState();
}

class _AgendaFirstScreenState extends State<AgendaFirstScreen> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Agenda Doctor'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.notifications_outlined,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
              },
              calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  todayDecoration: BoxDecoration(
                      color: ConstantColor.APP_COLOR, shape: BoxShape.circle),
                  selectedDecoration: BoxDecoration(
                      color: ConstantColor.APP_COLOR, shape: BoxShape.circle)),
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
            ),
            ComponentSizedBox.topMargin(size: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ComponentText.buildTextWidget(
                      title: '8 AM',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: ConstantColor.APP_COLOR),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      ImagePath.person,
                      fit: BoxFit.contain,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Column(
                    children: [
                      ComponentText.buildTextWidget(
                          title: 'Albero\nRamirez\nSanches',
                          maxLines: 3,
                          color: ConstantColor.APP_COLOR),
                      ComponentText.buildTextWidget(title: '1-Limpieza dental'),
                      ComponentText.buildTextWidget(title: '2-Consultation'),
                    ],
                  ),
                  ComponentButton.buildTransparentButton(
                    height: 50,
                    width: 100,
                    title: 'Confirm',
                    texColor: Colors.white,
                    borderColor: ConstantColor.APP_COLOR,
                    btnColor: ConstantColor.APP_COLOR,
                    radius: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
