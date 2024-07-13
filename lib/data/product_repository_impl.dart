import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task147/core/failure.dart';
import 'package:task147/core/netwrok/network_service.dart';
import 'package:task147/model/product.dart';
import 'package:task147/repository/product_repository.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl extends ProductRepository {
  final NetworkService networkService;
  ProductRepositoryImpl(this.networkService);
  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      http.Response response =
          await networkService.apiGet(url: Uri.parse("https://dummyjson.com/products"));
      if (response.statusCode == 200) {
        var res = json.decode(response.body);
        return right(List<Product>.from(
            res['products']?.map((x) => Product.fromMap(x))));
      } else {
        return left(Failure("something went wrong"));
      }
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
