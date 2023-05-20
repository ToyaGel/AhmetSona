import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class ShowUpAnimationWidget extends StatelessWidget {
  const ShowUpAnimationWidget({Key? key, required this.child, required this.delayStart})
      : super(key: key);

  final Widget child;
  final int delayStart;

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
        delayStart: Duration(milliseconds: delayStart),
        animationDuration: const Duration(milliseconds: 1300),
        curve: Curves.bounceIn,
        direction: Direction.vertical,
        offset: 0.5,
        child: child);
  }
}
