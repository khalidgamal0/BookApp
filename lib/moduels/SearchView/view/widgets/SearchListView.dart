import 'package:flutter/material.dart';

import '../../../homescreen/views/HomeView/widgets/BestSellerListViewItem.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      // physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>Text(''),
        separatorBuilder: (context, index) =>const SizedBox(height: 20,),
        itemCount: 15);
  }

}
