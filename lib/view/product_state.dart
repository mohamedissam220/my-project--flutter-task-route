part of 'product_cubit.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

 class LoadingProduct extends ProductState {}

 class LoadedProducts extends ProductState{
  final List<Product> productsList;
  const LoadedProducts({
    required this.productsList
  });

  @override
  List<Object> get props => [productsList];
}

 class ErrorState extends ProductState{
  final String error;
  const ErrorState({
    required this.error
  });
@override
  List<Object> get props => [Error];

 }
  

