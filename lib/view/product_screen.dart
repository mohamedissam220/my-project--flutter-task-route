import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task147/core/app_colors.dart';
import 'package:task147/core/app_images.dart';
import 'package:task147/view/product_cubit.dart';
import 'package:task147/injection.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task147/view/widgets/error_widget.dart';
import 'package:task147/view/widgets/product_widget.dart';
import 'package:task147/view/widgets/search_text_field.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getProducts(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              switch (state) {
                case LoadingProduct():
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case ErrorState():
                  return const Center(
                    child: ProductErrorWidget()
                  );
                case LoadedProducts():
                  return CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        title: Image.asset(
                          AppImages.logo,
                          color: AppColors.primaryColor,
                          scale: 2,
                        ),
                        pinned: true,
                        bottom: PreferredSize(
                          preferredSize: const Size(0, 50),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Expanded(child: SearchTextField()),
                                const SizedBox(width: 20),
                                Image.asset(
                                  AppImages.cart,
                                  width: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 20,
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        sliver: SliverGrid.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 11.0,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: .7),
                          itemCount: state.productsList.length,
                          itemBuilder: (context, index) {
                            return ProductWidget(
                              product: state.productsList[index],
                            );
                          },
                        ),
                      )
                    ],
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
