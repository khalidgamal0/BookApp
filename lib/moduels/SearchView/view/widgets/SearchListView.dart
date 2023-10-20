import 'package:flutter/material.dart';

import '../../../../shared/custom_error_widget.dart';
import '../../../homescreen/views/HomeView/widgets/BestSellerListViewItem.dart';
import '../manger/search_cubit.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key, required this.cubit}) : super(key: key);
  final SearchCubit cubit;
  @override
  Widget build(BuildContext context) {
    if (cubit.state is SearchSuccess) {
      return  ListView.separated(
      // physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>BestSellerListViewItem(books: cubit.books[index],),
        separatorBuilder: (context, index) =>const SizedBox(height: 20,),
        itemCount: cubit.books.length);
    }else if (cubit.state is SearchFailure) {
      return const CustomErrorWidget(errMessage: 'Not Available');
    } else if(cubit.state is SearchLoading){
      return const Center(child:  CircularProgressIndicator());
    }else{
      return const Center(
        child: Text('Search Of Book Name'),
      );
    }
  }

}
