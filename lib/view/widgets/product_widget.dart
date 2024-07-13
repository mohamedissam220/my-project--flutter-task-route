import 'package:flutter/material.dart';
import 'package:task147/core/app_colors.dart';
import 'package:task147/model/product.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({required this.product, super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl: product.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    width: 49,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      product.description,
                      style: const TextStyle(
                          fontSize: 14, color: AppColors.blackColor),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              "EGP ${product.price}",
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              " ${calcPriceDiscount()} EGP",
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.primaryColor,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: AppColors.primaryColor),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Review (${product.rating})",
                                style: const TextStyle(
                                    fontSize: 12, color: AppColors.blackColor),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            // TODO: not implemented yet.
                          },
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: AppColors.blueDark,
                            child: Icon(
                              Icons.add,
                              color: AppColors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }

  String calcPriceDiscount() {
    return (product.price / product.discountPercentage).toStringAsFixed(2);
  }
}
