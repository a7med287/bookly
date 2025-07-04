import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget{
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     home: SplashView(),
   );
  }
}
