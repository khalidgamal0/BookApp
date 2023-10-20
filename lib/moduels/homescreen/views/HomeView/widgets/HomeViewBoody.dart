import 'package:flutter/material.dart';
import '../../../../../shared/styles.dart';
import 'BestSellerListView.dart';
import 'CustomAppBar.dart';
import 'FeaturesListViewBOOK.dart';


class HomeViewBoody extends StatelessWidget {
  const HomeViewBoody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
                FeaturesListViewBOOK(),
               SizedBox(height: 40,),
               Text('Best Seller',style: Styles.textStyle18,),
               SizedBox(height:5,),
               BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}




