import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../shared/componnent/app_roter.dart';
import '../../../../../shared/constant.dart';
import '../../../../../shared/styles.dart';
import '../../../data/model/book_model.dart';
import 'BookingRate.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.books,}) : super(key: key);

  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetails,
          extra: books,
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.5/4,
              child:CachedNetworkImage(
                imageUrl:books.volumeInfo.imageLinks?.thumbnail??'',
                fit:BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                placeholder: (context, url) =>const Center(child:CircularProgressIndicator()),
              ),
            ),
          ),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.5,
                  child: Text( books.volumeInfo.authors?[0] ??'',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3,),
                 Text( books.volumeInfo.authors?[0]??'',
                  style: Styles.textStyle14,),
                const SizedBox(height: 3,),
                 Row(children: [
                  const Text('free',style: Styles.textStyle20,),
                  const Spacer(),
                  BookingRate(
                   rating: books.volumeInfo.averageRating?.round() ?? 0,
                    count: books.volumeInfo.ratingsCount ?? 0,
                  ),
                ],)
              ],),
          )

        ],
      ),
    );

  }
}
