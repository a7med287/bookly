
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class BestSellerListViewItem extends StatelessWidget{
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children:  [
          AspectRatio(
            aspectRatio: 1.8 / 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
