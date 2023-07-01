import 'package:flutter/material.dart';

import 'FeatureItemOfListView.dart';

class FeaturesListViewBOOK extends StatelessWidget {
  const FeaturesListViewBOOK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height*.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) =>const Padding(
            padding:  EdgeInsets.all(8.0),
            child: FeatureItemOfListView(),
          ),

        ));
  }
}