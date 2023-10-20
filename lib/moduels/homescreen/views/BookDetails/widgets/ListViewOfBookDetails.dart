import 'package:bookapp/shared/custom_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/fetch-similar_books/fetch_similar_books_cubit.dart';
import 'BookDetailsListView.dart';

class ListViewOfBookDetails extends StatelessWidget {
  const ListViewOfBookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
  builder: (context, state) {
    if(state is FetchSimilarBooksSuccess)
    {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  BookDetailsListView(bookModel:state.bookModel[index] ),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                itemCount: state.bookModel.length),
          );
        }
    else if(state is FetchSimilarBooksFailer){
      return CustomErrorWidget(errMessage: state.errorMessage);
    }
    else{
      return const Center(child: CircularProgressIndicator());
    }
      },
);
  }
}
