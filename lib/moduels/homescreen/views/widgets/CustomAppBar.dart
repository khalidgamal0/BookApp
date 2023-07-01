import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(children: [
        const Image(image:AssetImage(AssetsData.logo),height: 24,),
        const Spacer(),
        IconButton(onPressed:(){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass))



      ],),
    );
  }
}