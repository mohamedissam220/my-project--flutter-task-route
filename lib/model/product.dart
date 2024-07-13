
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final  double discountPercentage;
  final  double rating;
  final  int stock;
  final String brand;
  final String sku;
  final String thumbnail;
  final List<String> images;
  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.sku,
    required this.thumbnail,
    required this.images,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'category': category,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'brand': brand,
      'sku': sku,
      'thumbnail': thumbnail,
      'images': images,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      title: map['title'] ?.toString() ??'',
      description: map['description'] ?.toString() ??'',
      category: map['category'] ?.toString() ??'',
      price: map['price'] as double,
      discountPercentage: double.tryParse(map['discountPercentage'].toString(),)??0,
      rating: map['rating'] as double,
      stock: map['stock'] as int,
      brand: map['brand'] ?.toString() ??'',
      sku: map['sku'] ?.toString() ??'',
      thumbnail: map['thumbnail'] ?.toString() ??'',
      images: List<String>.from((map['images']),
      )
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      title,
      description,
      category,
      price,
      discountPercentage,
      // rating,
      stock,
      brand,
      sku,
      thumbnail,
      images,
    ];
  }
}
