import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'FeaturesListViewBOOK.dart';

class HomeViewBoody extends StatelessWidget {
  const HomeViewBoody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
         const CustomAppBar(),
        const  FeaturesListViewBOOK()
        ],
      ),
    );
  }
}



