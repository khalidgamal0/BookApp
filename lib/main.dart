import 'package:bookapp/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'moduels/SplachScreen/SplachView.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
       home:const SplachView(),
    );
  }
}


