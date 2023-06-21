import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColoredBox(
          color: const Color(0XFF41A9AA),
          child: Image.asset(
            'assets/images/background2.jpg',
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .7,
              ),
              LoadingAnimationWidget.stretchedDots(color: const Color(0XFFd5e5c7), size: 30),
            ],
          ),
        ),
      ],
    );
  }
}
