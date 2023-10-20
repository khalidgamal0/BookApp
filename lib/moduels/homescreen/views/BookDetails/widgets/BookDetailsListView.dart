import 'package:bookapp/moduels/homescreen/data/model/book_model.dart';
import 'package:flutter/material.dart';


class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({
    super.key, required this.bookModel,
  });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    {
      return SizedBox(
        height: 125,
        child: AspectRatio(
          aspectRatio: 2.3 / 3.8,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Colors.red,
                image: DecorationImage(
                  image:NetworkImage(
                  bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                ),  fit: BoxFit.fill,)),
          ),
        ),
      );
    }

  }
}
