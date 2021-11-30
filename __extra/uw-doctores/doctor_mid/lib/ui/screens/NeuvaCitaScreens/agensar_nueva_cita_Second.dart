import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendarNuevaCitaSecond extends StatefulWidget {
  @override
  _AgendarNuevaCitaSecondState createState() => _AgendarNuevaCitaSecondState();
}

class _AgendarNuevaCitaSecondState extends State<AgendarNuevaCitaSecond> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('New Appointment'),
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
        child: SingleChildScrollView(
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
                        color: ConstantColor.APP_COLOR,
                        shape: BoxShape.circle)),
                selectedDayPredicate: (DateTime date) {
                  return isSameDay(selectedDay, date);
                },
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
              ),
              ComponentSizedBox.topMargin(size: 40),
              buildAppointmentScheduleRow(
                  icon1: Icons.schedule_outlined,
                  title: '00:00',
                  icon2: Icons.check_circle_outline,
                  isActive: false),
              ComponentSizedBox.topMargin(size: 10),
              buildAppointmentScheduleRow(
                  icon1: Icons.schedule_outlined,
                  title: '01:00',
                  icon2: Icons.check_circle_outline,
                  isActive: true),
              ComponentSizedBox.topMargin(size: 10),
              buildAppointmentScheduleRow(
                  icon1: Icons.schedule_outlined,
                  title: '02:00',
                  icon2: Icons.check_circle_outline,
                  isActive: false),
              ComponentSizedBox.topMargin(size: 10),
              buildAppointmentScheduleRow(
                  icon1: Icons.schedule_outlined,
                  title: '03:00',
                  icon2: Icons.check_circle_outline,
                  isActive: false),
              ComponentSizedBox.topMargin(size: 10),
              buildAppointmentScheduleRow(
                  icon1: Icons.schedule_outlined,
                  title: '04:00',
                  icon2: Icons.check_circle_outline,
                  isActive: false),
              ComponentSizedBox.topMargin(size: 10),
              buildAppointmentScheduleRow(
                  icon1: Icons.schedule_outlined,
                  title: '05:00',
                  icon2: Icons.check_circle_outline,
                  isActive: false),
            ],
          ),
        ),
      ),
    );
  }

  Row buildAppointmentScheduleRow(
      {IconData icon1, String title, IconData icon2, bool isActive}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icon1,
          color: ConstantColor.APP_COLOR,
          size: 35,
        ),
        ComponentText.buildTextWidget(
            title: title, fontSize: 18, color: ConstantColor.APP_COLOR),
        Icon(
          isActive ? icon2 : Icons.radio_button_unchecked_outlined,
          color: ConstantColor.APP_COLOR,
          size: 35,
        ),
      ],
    );
  }
}
