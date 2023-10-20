import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../shared/styles.dart';



class BookingRate extends StatelessWidget {
   const BookingRate({Key? key, this.mainAxisAlignment=MainAxisAlignment.start, required this.count, required this.rating}) : super(key: key);
 final MainAxisAlignment mainAxisAlignment;
   final int count;
   final int rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
      const Icon(FontAwesomeIcons.solidStar,color: Colors.yellowAccent,),
      const SizedBox(width: 6.3,),
        Text(rating.toString(),style: Styles.textStyle16,),
      const  SizedBox(width: 6.3,),
      Text('($count)'.toString(),style: Styles.textStyle14.copyWith(
        fontWeight:FontWeight.normal,
      ),),
    ],);
  }
}