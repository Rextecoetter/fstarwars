import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(45),
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: LoadingAnimationWidget.stretchedDots(
            color: const Color(0XFFd5e5c7),
            size: 30,
          ),
        ),
      ),
    );
  }
}
