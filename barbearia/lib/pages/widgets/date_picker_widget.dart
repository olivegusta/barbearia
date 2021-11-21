import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:barbearia/pages/widgets/button_widget.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late DateTime date;

  // String getText() {
  // if (date == null) {
  //    return 'Select Date';
  //  } else {
  //   //return DateFormat('MM/dd/yyyy').format(date);
  //    return '${date.month}/${date.day}/${date.year}';
  //  }
  //}

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'Date',
        text: ('Selecione a data'),
        onClicked: () => pickDate(context),
      );

  pickDate(BuildContext context) {
    final initialDate = DateTime.now();
    final newDate = showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() => date = newDate as DateTime);
  }
}
