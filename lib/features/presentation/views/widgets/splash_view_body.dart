
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/Logo.png"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The books you need are here",style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),),
          ],
        )
      ],
    );
  }
}