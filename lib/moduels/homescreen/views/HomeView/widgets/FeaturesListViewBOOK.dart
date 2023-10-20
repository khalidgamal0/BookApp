import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/componnent/app_roter.dart';
import '../../../../../shared/custom_error_widget.dart';
import '../../manger/fetchBook/fetch_book_cubit.dart';
import 'FeatureItemOfListView.dart';

class FeaturesListViewBOOK extends StatelessWidget {
  const FeaturesListViewBOOK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBookCubit, FetchBookState>(
      builder: (context,state) {
        if(state is FetchBookSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kBookDetails,
                      extra:state.books[index],
                    );
                  },
                  child: FeatureItemOfListView(
                      imgUrl: state.books[index].volumeInfo.imageLinks
                      ?.thumbnail??''
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 8,
                ),
                itemCount: state.books.length,
              ));
        } else if(state is FetchBookFail) {
          return CustomErrorWidget(errMessage: state.errorMeasege,);
        } else
          return CircularProgressIndicator();
      },
    );
  }
}