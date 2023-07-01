import 'package:flutter/material.dart';
import 'CustomAppBar.dart';

class HomeViewBoody extends StatelessWidget {
  const HomeViewBoody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
           CustomAppBar()
        ],
      ),
    );
  }
}

