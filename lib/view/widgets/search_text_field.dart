import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task147/core/app_colors.dart';
import 'package:task147/core/strings.dart';
import 'package:task147/view/product_cubit.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _searchContoller = TextEditingController();


  @override
  void dispose() {
   _searchContoller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchContoller,
      onChanged: (String value){
        context.read<ProductCubit>().searchInProducts(value);
      },
      
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        prefix: Icon(Icons.search,color: AppColors.primaryColor,size: 25),
         border: InputBorder.none,
         hintText: Strings.searchFieldHint,
         focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(width: 1,color: AppColors.primaryColor)
         ),
         enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(width: 1,color: AppColors.primaryColor)
         ),
         errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(width: 1,color: AppColors.primaryColor)
         )
      ),
    );
  }
}
