import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task147/core/app_colors.dart';
import 'package:task147/core/strings.dart';
import 'package:task147/view/product_cubit.dart';

class ProductErrorWidget extends StatelessWidget {
  const ProductErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Strings.someThingWentWrong,
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 15),
        MaterialButton(
          onPressed: () {
            context.read<ProductCubit>().emitLoadingState();
            context.read<ProductCubit>().getProducts();
          },
          color: AppColors.primaryColor,
          child: const Text(
            Strings.tryAgain,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
