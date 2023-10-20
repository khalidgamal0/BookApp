import 'package:bookapp/moduels/SearchView/view/widgets/SearchViewDoody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SearchViewDoody(),
      ),
    );
  }
}
