// Coded By AlfaWhoCodes
// Follow for more
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicButtonWidget extends StatefulWidget {
  NeumorphicButtonWidget({Key? key}) : super(key: key);

  @override
  State<NeumorphicButtonWidget> createState() => _NeumorphicWidgetState();
}

class _NeumorphicWidgetState extends State<NeumorphicButtonWidget> {
  late Timer _timer;
  double offset = 0;
  bool ischecked = false;
  bool isPlaying = false;
  double sliderValue = 0.0;
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 12,
            ),
            Container(
                padding: const EdgeInsets.all(12),
                child: const Text('Nuemorphic Button',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400))),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 56,
                  width: 180,
                  margin: EdgeInsets.all(6),
                  child: NeumorphicButton(
                    onPressed: () {
                      isPlaying = !isPlaying;
                      setState(() {});
                    },
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          const BorderRadius.all(Radius.circular(12))),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          isPlaying ? Icons.play_arrow_sharp : Icons.pause,
                          color: Colors.black54,
                          size: 24,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          isPlaying ? 'Play' : 'Pause',
                          style: TextStyle(
                              color: _textColor(context), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.only(top: 24, bottom: 4),
                child: const Text('AlfaWhoCodes',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600))),
            Container(
                child: const Text('follow for more',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300)))
          ],
        ),
      ),
    );
  }

  Color _textColor(BuildContext context) {
    if (NeumorphicTheme.isUsingDark(context)) {
      return Colors.white;
    } else {
      return Colors.black54;
    }
  }
}
