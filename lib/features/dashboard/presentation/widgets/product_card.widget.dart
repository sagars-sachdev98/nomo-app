import 'package:flutter/material.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';
import 'package:nomo_app/core/utils/price.util.dart';

class ProductCard extends StatelessWidget {
  final double? maxRetailPrice;
  final double? sellingPrice;
  final String? productName;
  final String? productOptionName;
  final String? productOptionValueName;
  final String? productImg;
  const ProductCard(
      {super.key,
      this.maxRetailPrice,
      this.productName,
      this.productOptionName,
      this.productOptionValueName,
      this.sellingPrice,
      this.productImg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: Theme.of(context).colorScheme.onSurface),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              if (productImg != null)
                // SvgPicture.network(productImg!)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(productImg!),
                )
              else
                // SvgPicture.asset(productImg ?? "bell_pepper".svg),
                Expanded(
                  child: Image.asset(
                    "bell_pepper".png,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              // const Spacer(),
              CustomText(productName ?? "").db().bold(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      if (maxRetailPrice != null)
                        Row(
                          children: [
                            CustomText("₹$maxRetailPrice")
                                .decoration(TextDecoration.lineThrough)
                                .dm()
                                .fontWeight(FontWeight.w900),
                            CustomText(PriceUtils.getOfferPercentage(
                                            maxRetailPrice, sellingPrice)
                                        ?.toStringAsFixed(2) ??
                                    "")
                                .dm()
                          ],
                        ),
                      CustomText(
                              "₹${sellingPrice?.toString() ?? ""}, ${productOptionValueName ?? ""}")
                          .db()
                          .bold()
                          .textColor(Theme.of(context).primaryColor),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 32,
                      icon: Icon(
                        Icons.add_circle_rounded,
                        color: Theme.of(context).primaryColor,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
