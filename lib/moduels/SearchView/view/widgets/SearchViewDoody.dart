import 'package:bookapp/shared/styles.dart';
import 'package:flutter/material.dart';
import 'CustomSearchTextForm.dart';
import 'SearchListView.dart';

class SearchViewDoody extends StatelessWidget {
  const SearchViewDoody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSearchTextForm(),
              SizedBox(height: 30,),
              Text('Result',style: Styles.textStyle20,),
            SizedBox(height: 15,),
            Expanded(child: SearchListView()),

          ],),
      ),
    );
  }
}

