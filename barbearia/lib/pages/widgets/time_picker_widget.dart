import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:barbearia/pages/widgets/button_widget.dart';

class TimePickerWidget extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  late TimeOfDay time;

  //String getText() {
  //if (time == null) {
  //   return 'Select Time';
  // } else {
  //   final hours = time.hour.toString().padLeft(2, '0');
  //  final minutes = time.minute.toString().padLeft(2, '0');

  //   return '$hours:$minutes';
  // }
  // }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'Time',
        text: ('Selecione a hora'),
        onClicked: () => (context),
      );

  Future pickTime(BuildContext context) async {
    final dtPick = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2000),
        lastDate: new DateTime(2100));

    if (dtPick == null) return;

    setState(() => time = dtPick as TimeOfDay);
  }
}
