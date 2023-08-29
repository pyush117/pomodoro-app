import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/timerservice.dart';

import '../timerservice.dart';

class timecontroller extends StatefulWidget {
  const timecontroller({Key? key}) : super(key: key);

  @override
  State<timecontroller> createState() => _timecontrollerState();
}

class _timecontrollerState extends State<timecontroller> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      child: Center(
        child: IconButton(
            icon: provider.timerPlaying
                ? Icon(Icons.pause)
                : Icon(Icons.play_arrow_sharp),
            color: Colors.white,
            iconSize: 55.0,
            onPressed: () {
              provider.timerPlaying
                  ? Provider.of<TimerService>(context, listen: false).pause()
                  : Provider.of<TimerService>(context, listen: false).start();
            }),
      ),
    );
  }
}
