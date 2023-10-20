import 'package:bookapp/moduels/homescreen/data/model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/componnent/CustomTextButton.dart';
import '../../../../../shared/function/LunchCustomUrl.dart';
import '../../../../../shared/styles.dart';
import '../../HomeView/widgets/BookingRate.dart';
import '../../HomeView/widgets/FeatureItemOfListView.dart';
import 'CustomDetailsAppBar.dart';

class SectionOneInDetails extends StatelessWidget {
  const SectionOneInDetails({
    super.key, required this.bookModel,
  });

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child:  FeatureItemOfListView(imgUrl:bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title??'',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookingRate(
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextButton(
               onPressed: (){},
                text: 'free',
                textColor: Colors.black,
                backGroundColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
            Expanded(
              child: CustomTextButton(
                onPressed: ()async{
                  launchCustomUrl(context,url: bookModel.volumeInfo.previewLink! );
                },
                text: getText(bookModel),
                textColor: Colors.black,
                backGroundColor: Colors.orange,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avaliable';
  } else {
    return 'Preview';
  }
}