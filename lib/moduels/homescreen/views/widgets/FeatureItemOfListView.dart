import 'package:flutter/material.dart';

import '../../../../shared/assets.dart';

class FeatureItemOfListView extends StatelessWidget {
  const FeatureItemOfListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(
        decoration:const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.red,
            image: DecorationImage(image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            )
        ),
      ),
    );
  }
}
