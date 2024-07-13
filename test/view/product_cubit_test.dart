import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task147/core/failure.dart';
import 'package:task147/model/product.dart';
import 'package:task147/repository/product_repository.dart';
import 'package:task147/view/product_cubit.dart';
import 'package:bloc_test/bloc_test.dart';

import 'product_cubit_test.mocks.dart';
@GenerateNiceMocks([MockSpec<ProductRepository>()])

void main() {
  MockProductRepository mockProductRepository = MockProductRepository();
  const product = Product(id: 1, title: 'title', description: 'description', category: 'category', price: 22.3, discountPercentage: 12.3, rating: 4, stock: 4, brand: 'brand', sku: 'sku', thumbnail: 'thumbnail', images: ['']);
  blocTest<ProductCubit, ProductState>(
    'emits [LoadedProduct] with List of products when the call is success.',
    build: () => ProductCubit(mockProductRepository),
    setUp: (){
      when(mockProductRepository.getProducts()).thenAnswer((_) async=> right([product]));
    },
    act: (bloc) async=> await bloc.getProducts(),
    expect: () => const[LoadedProducts(productsList: [product])],
  );

  blocTest<ProductCubit, ProductState>(
    'emits [ErrorState]  when the call is failed.',
    build: () => ProductCubit(mockProductRepository),
    setUp: (){
      when(mockProductRepository.getProducts()).thenAnswer((_) async=> left(Failure('error')));
    },
    act: (bloc) async=> await bloc.getProducts(),
    expect: () => const[ErrorState(error: 'error')],
  );
}