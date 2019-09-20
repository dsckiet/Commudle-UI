import 'package:flutter/material.dart';

import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 1),
          ColorTween(begin: Color(0xff4F73FF), end: Color(0xff28A6FF))),
      Track("color2").add(Duration(seconds: 1),
          ColorTween(begin: Color(0xff28A6FF), end: Color(0xffFFFFFF)))
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [animation["color2"], animation["color1"]])),
        );
      },
    );
  }
}
