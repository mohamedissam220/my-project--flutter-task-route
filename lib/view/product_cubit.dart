// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:task147/model/product.dart';
import 'package:task147/repository/product_repository.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepository) : super(LoadingProduct());
  final ProductRepository productRepository;
  List<Product> originalProductList = [];

  Future<void> getProducts() async {
    final result = await productRepository.getProducts();
    result.fold(
      (l) => emit(ErrorState(
        error: l.toString(),
      )),
      (productsList) {
        originalProductList = productsList;
        emit(
          LoadedProducts(productsList: productsList),
        );
      },
    );
  }

  void emitLoadingState(){
    emit(LoadingProduct());
  }

  void searchInProducts(String value) {
    if (state is LoadedProducts) {
      final productsList = originalProductList;

      if (productsList
          .where((product) =>
              product.title.toLowerCase().contains(value.toLowerCase()))
          .toList()
          .isNotEmpty) {
        emit(LoadedProducts(
            productsList: productsList
                .where((product) =>
                    product.title.toLowerCase().contains(value.toLowerCase()))
                .toList()));
      } else {
        emit(LoadedProducts(productsList: originalProductList));
      }
    }
  }
}
