import 'package:bookapp/moduels/homescreen/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manger/fetch-similar_books/fetch_similar_books_cubit.dart';
import 'widgets/book_details_boody.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key, required this.bookModel}) : super(key: key);

final BookModel bookModel;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarBooksCubit>(context).fetchSimilarBook(
        category: widget.bookModel.volumeInfo.categories?[0]??'');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  BookDetailsBoody(bookModel: widget.bookModel,);
  }
}
