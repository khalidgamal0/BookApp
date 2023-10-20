import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../shared/componnent/app_roter.dart';
import '../../../shared/assets.dart';
import 'SlidingText.dart';


class SplachViewBoody extends StatefulWidget {
  const SplachViewBoody({Key? key}) : super(key: key);

  @override
  State<SplachViewBoody> createState() => _SplachViewBoodyState();
}

class _SplachViewBoodyState extends State<SplachViewBoody> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    intialAnimiate();
    navigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         const Image(image:AssetImage(AssetsData.logo)),
          const SizedBox(height: 4,),
           SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
  void intialAnimiate() {
    animationController=AnimationController(vsync: this, duration:const Duration(seconds:1));
    slidingAnimation= Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds:2),(){
      // Get.to(()=>
      // const HomeView(),
      //   transition:Transition.fadeIn,duration: kTranstionDuration,
      // );
      GoRouter.of(context).push(AppRouter.kHomeView);
    },);
  }
}

