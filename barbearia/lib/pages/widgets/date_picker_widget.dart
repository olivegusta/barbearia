import 'package:barbearia/main.dart';
import 'package:barbearia/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/date_symbol_data_custom.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/date_symbol_data_http_request.dart';
import 'package:intl/intl.dart';
import 'package:barbearia/pages/widgets/button_widget.dart';
import 'package:barbearia/main.dart';
import 'package:intl/date_symbol_data_local.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();

  late final String text;
}

//late DateTime _dataInfo;

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late DateTime _birthDate;
  late DateTime date;

  @override
  void iniState() {
    initializeDateFormatting() => _birthDate = DateTime.now();
    super.initState();
  }

  // String getText() {
  // if (date == null) {
  //    return 'Select Date';
  //  } else {
  //   //return DateFormat('MM/dd/yyyy').format(date);
  //    return '${date.month}/${date.day}/${date.year}';
  //  }
  //}

  @override
  Widget build(BuildContext context) {
    _birthDate = DateTime.now();
    return GestureDetector(
      child: Container(
        height: setHeight(40),
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(formatDateToLocale(_birthDate)),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      onTap: () {
        DatePicker.showDatePicker(
          context,
          locale: LocaleType.pt,
          currentTime: _birthDate,
          onConfirm: (date) {
            setState() {
              _birthDate = date;
            }
          },
          theme: DatePickerTheme(),
        );
      },
    );
  }
}
