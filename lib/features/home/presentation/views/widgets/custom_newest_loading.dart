
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/utils/styles.dart';

class CustomNewestLoading extends StatelessWidget {
  const CustomNewestLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: AspectRatio(
          aspectRatio: 1.8 / 3,
          child: Skeletonizer(
            child: SizedBox(
              height: 130,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 1.8 / 3,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AssetsData.testImage)
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .5,
                            child: Text(
                             " bookModel.volumeInfo.title ?? wegv ui    uhfuiw  rhf uihrfk  bfb wufbk rfb our buyb ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                           " rsbh fwern ru nwlskn",
                            style: Styles.textStyle14,
                          ),
                          const SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Free",
                                style: Styles.textStyle20.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
