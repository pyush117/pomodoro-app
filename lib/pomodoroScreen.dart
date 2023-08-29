import 'package:flutter/material.dart';
import 'package:pomodoro/timerservice.dart';
import 'package:provider/provider.dart';
import 'utils.dart';
import 'package:pomodoro/widgets/timercard.dart';
import 'package:pomodoro/widgets/timeoptions.dart';
import 'package:pomodoro/widgets/timecontroller.dart';
import 'package:pomodoro/widgets/progresswidget.dart';

class pomodoroScreen extends StatelessWidget {
  const pomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          'POMOTIMER',
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TimerCard(),
              SizedBox(height: 40.0),
              TimeOptions(),
              SizedBox(
                height: 30.0,
              ),
              timecontroller(),
              SizedBox(
                height: 30,
              ),
              progressWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
