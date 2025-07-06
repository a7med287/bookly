import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration( seconds: 2),
    );

    slidingAnimation = Tween(
      begin: Offset(0, 2),
      end: Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/Logo.png"),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (BuildContext context, Widget? child) {
            return SlideTransition(
              position: slidingAnimation,
              child: Text(
                "Read Free Books",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }


}
