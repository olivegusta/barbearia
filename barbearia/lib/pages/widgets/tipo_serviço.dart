import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:barbearia/pages/widgets/button_widget.dart';

class tipo_servico extends StatefulWidget {
  @override
  _tipo_servicoState createState() => _tipo_servicoState();
}

class _tipo_servicoState extends State<tipo_servico> {
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
        text: ('Selecione o serviço'),
        onClicked: () => (context),
      );

  //Future pickTime(BuildContext context) async {
  //final initialTime = TimeOfDay(hour: 9, minute: 0);
  // final newTime = await showTimePicker(
  //  context: context,
  //  initialTime: time,
  // );

  //  if (newTime == null) return;

  // setState(() => time = newTime);
  //}
}
