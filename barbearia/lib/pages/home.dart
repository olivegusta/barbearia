// ignore_for_file: file_names

import 'package:barbearia/utils/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:barbearia/pages/home.dart';
import 'package:barbearia/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: corpo(),
    );
  }
}

Widget corpo() {
  return Column(
    children: [],
  );
}

Widget _buildTableCalendar() {
  return TableCalendar(
    startingDayOfWeek: StartingDayOfWeek.monday,
    calendarStyle: CalendarStyle(
      selectedColor: Colors.deepOrange[400],
      todayColor: Colors.deepOrange[200],
      markersColor: Colors.brown[700],
      outsideDaysVisible: false,
    ),
    headerStyle: HeaderStyle(
      formatButtonTextStyle:
          TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
      formatButtonDecoration: BoxDecoration(
        color: Colors.deepOrange[400],
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
  );
}
