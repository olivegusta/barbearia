import 'package:barbearia/pages/Timeline.dart';
import 'package:barbearia/pages/login.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:barbearia/pages/agendamento.dart';
import 'package:barbearia/pages/widgets/button_widget.dart';
import 'package:barbearia/pages/widgets/date_picker_widget.dart';
import 'package:barbearia/pages/widgets/date_range_picker_widget.dart';
import 'package:barbearia/pages/widgets/datetime_picker_widget.dart';
import 'package:barbearia/pages/widgets/time_picker_widget.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

int index = 0;

class MyApp extends StatelessWidget {
  static final String title = 'Date (Range) & Time';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/Timeline': (context) => TimelinePage(
              nome: '',
            ),
        '/agendamento': (context) => agendamentoPage(
              nome: '',
            ),

        //LoginPage.tag: (context) => LoginPage(),
      },
    );
  }
}

abstract class _MainPageState extends StatefulWidget {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: buildPages(),
      );

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: AppConsts.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Text('DatePicker', style: style),
          title: Text('Basic'),
        ),
        BottomNavigationBarItem(
          icon: Text('DatePicker', style: style),
          title: Text('Advanced'),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DatePickerWidget(),
                const SizedBox(height: 24),
                TimePickerWidget(),
                const SizedBox(height: 24),
                DateRangePickerWidget(),
              ],
            ),
          ),
        );
      case 1:
        return Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DatetimePickerWidget(),
              ],
            ),
          ),
        );
      default:
        return Container();
    }
  }
}

setState(int Function() param0) {}
