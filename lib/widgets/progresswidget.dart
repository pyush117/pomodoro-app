import 'package:flutter/material.dart';
import 'package:pomodoro/utils.dart';
import 'package:provider/provider.dart';

import '../timerservice.dart';

class progressWidget extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "${provider.goal}/4",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "ROUND",
              style: textStyle(25, Colors.white, FontWeight.bold),
            ),
            Text(
              "GOAL",
              style: textStyle(25, Colors.white, FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
