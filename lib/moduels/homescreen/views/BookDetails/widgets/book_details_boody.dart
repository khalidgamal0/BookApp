import 'package:flutter/material.dart';
import '../../../data/model/book_model.dart';
import 'SectionOneInDetails.dart';
import 'SectionTowInDetails.dart';

class BookDetailsBoody extends StatelessWidget {
  const BookDetailsBoody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SectionOneInDetails(bookModel: bookModel),
                const SizedBox(
                  height: 50,
                ),
                const  SectionTowInDetails(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


