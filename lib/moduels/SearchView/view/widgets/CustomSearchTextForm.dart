import 'package:flutter/material.dart';

class CustomSearchTextForm extends StatelessWidget {
  const CustomSearchTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: IconButton(onPressed: (){}, icon:const Icon(Icons.search),),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder:  buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide:const BorderSide(color:Colors.white),
    );
  }
}
