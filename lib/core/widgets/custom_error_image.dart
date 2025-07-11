import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomErrorImage extends StatelessWidget {
  const CustomErrorImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.image_not_supported_outlined),
          SizedBox(height: 10,),
          Text(
            "Image Not Found",
            style: Styles.textStyle14.copyWith(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
