// Coded By AlfaWhoCodes
import 'dart:async';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicWidget extends StatefulWidget {
  NeumorphicWidget({Key? key}) : super(key: key);

  @override
  State<NeumorphicWidget> createState() => _NeumorphicWidgetState();
}

class _NeumorphicWidgetState extends State<NeumorphicWidget> {
  late Timer _timer;
  double offset = 0;
  bool ischecked = false;
  bool isPlaying = false;
  double sliderValue = 0.0;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      //  counter = selectedIndex + 1;

      setState(() {
        if (isPlaying)
          sliderValue += 0.1;
        else
          sliderValue += 0.0;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NeumorphicFloatingActionButton(
        child: const Icon(Icons.share, size: 30),
        onPressed: () {},
      ),
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: const Text('Nuemorphic Circular Button',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(6),
                  child: NeumorphicButton(
                    onPressed: () {},
                    style: const NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                padding: const EdgeInsets.all(12),
                child: const Text('Nuemorphic Slider',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400))),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: NeumorphicSlider(
                height: 8,
                style: const SliderStyle(
                    accent: Color.fromARGB(255, 148, 69, 245),
                    variant: Color.fromARGB(255, 106, 39, 189)),
                value: sliderValue,
                onChanged: (percent) {
                  sliderValue = percent;
                  setState(() {});
                },
                onChangeStart: (percent) {
                  sliderValue = percent;
                  setState(() {});
                },
                onChangeEnd: (percent) {
                  sliderValue = percent;
                  setState(() {});
                },
                sliderHeight: 10,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 16, bottom: 8),
                child: const Text('Nuemorphic Switch',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w400))),
            NeumorphicSwitch(
              height: 60,
              value: ischecked,
              onChanged: (value) {
                //  value = value;
                setState(() {
                  ischecked = value;
                });
              },
              style: const NeumorphicSwitchStyle(

                  //   lightSource: LightSource(1, 1),
                  activeTrackColor: Color.fromARGB(255, 106, 39, 189)),
            ),
          ],
        ),
      ),
    );
  }
}
