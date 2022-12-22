import 'package:flutter/material.dart';
import 'package:library_app/views/home.dart';
import 'package:library_app/views/sign_in.dart';
import 'package:library_app/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'dart:async';

import 'package:flutter/material.dart';

class TimerReel extends StatefulWidget {
  const TimerReel({Key? key}) : super(key: key);

  @override
  _TimerReelState createState() => _TimerReelState();
}

class _TimerReelState extends State<TimerReel> {
  late Timer _timer;
  int _start = 60;
  var _isTimerOn = false;

  void startTimer() {
    const oneMin = Duration(minutes: 1);
    _timer = Timer.periodic(
      oneMin,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: FloatingActionButton(
          elevation: 0,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home())),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          backgroundColor: Color(0xfff2B2B2B),
        ),
        elevation: 3,
        title: const Text(
          'Timer',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Color(0xfff2B2B2B),
      ),
      body: Container(
        color: Color(0xfff2B2B2B),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.width * 0.85,
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  size: MediaQuery.of(context).size.width * 0.84,
                  customColors: CustomSliderColors(
                    trackColor: Color(0xfff364643),
                    progressBarColor: Color(0xfff24FFCC),
                    dotColor: Colors.black,
                    shadowColor: Colors.grey.shade600,
                  ),
                  startAngle: 270,
                  angleRange: 360,
                  customWidths: CustomSliderWidths(
                    trackWidth: 36,
                    progressBarWidth: 22,
                    handlerSize: 7,
                  ),
                ),
                min: 0,
                max: 60,
                initialValue: _start.toDouble(),
                onChange: (double value) {
                  setState(() {
                    _start = value.round();
                  });
                },
                innerWidget: (percentage) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${_start.round()}',
                        style: const TextStyle(
                          fontSize: 120,
                          color: Color(0xfff24FFCC),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "seconds",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            GestureDetector(
              onTap: () {
                if (_isTimerOn) {
                  _timer.cancel();
                  setState(() {
                    _isTimerOn = false;
                    _start = 60;
                  });
                } else {
                  _isTimerOn = true;
                  startTimer();
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    color: _isTimerOn ? Colors.redAccent : Color(0xfff24FFCC),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ]),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  _isTimerOn ? 'Stop' : 'Start',
                  style: TextStyle(
                    fontSize: 24,
                    color: _isTimerOn ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}