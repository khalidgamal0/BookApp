import 'package:bookapp/shared/componnent/app_roter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(children: [
        const Image(image:AssetImage(AssetsData.logo),height: 24,),
        const Spacer(),
        IconButton(onPressed:(){
          GoRouter.of(context).push(AppRouter.kSearchView);
        }, icon:const Icon(FontAwesomeIcons.magnifyingGlass)),
      ],),
    );
  }
}
