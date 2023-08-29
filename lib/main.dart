import 'package:flutter/material.dart';
import 'package:pomodoro/pomodoroScreen.dart';
import 'package:pomodoro/timerservice.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/timerservice.dart';

void main() {
  runApp((ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pomodoroScreen(),
    );
  }
}
