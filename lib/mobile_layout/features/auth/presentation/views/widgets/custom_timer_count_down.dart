import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../../../../../../utils/text_styles.dart';

class CustomTimerCountDown extends StatefulWidget {
  const CustomTimerCountDown({super.key});

  @override
  State<CustomTimerCountDown> createState() => _CustomTimerCountDownState();
}

class _CustomTimerCountDownState extends State<CustomTimerCountDown> {
  late DateTime _endTime;
  bool _isTimerFinished = false;
  bool _showTimer = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _isTimerFinished = false;
    _endTime = DateTime.now().add(Duration(seconds: 50));
    _showTimer = false; // Force widget rebuild
    Future.delayed(Duration(milliseconds: 10), () {
      setState(() {
        _showTimer = true; // Re-add TimerCountdown with new endTime
      });
    });
  }

  void _restartTimer() {
    setState(() {
      _startCountdown();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Code'),
        Spacer(),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: _isTimerFinished
              ? () {
                  print("Button Pressed!");
                  _restartTimer();
                }
              : null,
          child: Text(
            'Resend',
            style: AppTextStyles.styleBold14.copyWith(
                decoration: TextDecoration.underline, color: Colors.black),
          ),
        ),
        if(_showTimer)
          TimerCountdown(
            endTime: _endTime,
            format: CountDownTimerFormat.secondsOnly,
            enableDescriptions: false,
            onEnd: () {
              setState(() {
                _isTimerFinished = true;
              });
            },
          )
      ],
    );
  }
}
