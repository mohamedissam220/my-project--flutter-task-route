import 'package:task147/core/failure.dart';
import 'package:task147/model/product.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository{

  Future<Either<Failure, List<Product>>> getProducts();
}