import 'package:flutter/material.dart';
import '../manger/search_cubit.dart';

class CustomSearchTextForm extends StatelessWidget {
  const CustomSearchTextForm({
    super.key, required this.cubit,
  });
final SearchCubit cubit;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value){
        if (value != '') {
          cubit.fetchBooksSearch(value);
        }
      },
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: IconButton(
          onPressed: ( ) {}, icon: const Icon(Icons.search),),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
