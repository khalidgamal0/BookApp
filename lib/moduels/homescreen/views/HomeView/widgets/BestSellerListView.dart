import 'package:bookapp/shared/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/fetchBestSellerBook/fetch_best_seller_book_cubit.dart';
import 'BestSellerListViewItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBestSellerBookCubit, FetchBestSellerBookState>(
      builder: (context, state) {
        if(state is FetchBookBestSellerSuccess)
        {
          return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>  BestSellerListViewItem(books:state.books[index],),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemCount: state.books.length);
        }
        else if(state is FetchBookBestSellerFail){
          return CustomErrorWidget(errMessage: state.errorMeasege);
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
