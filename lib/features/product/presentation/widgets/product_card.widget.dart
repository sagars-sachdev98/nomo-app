import 'package:flutter/material.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';
import 'package:nomo_app/core/services/navigation_services/navigation_service.dart';
import 'package:nomo_app/core/utils/price.util.dart';
import 'package:nomo_app/features/product/product_details/presentation/view/product_details.view.dart';

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
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          NavigationService.goNext(context, ProductDetailsView.routeName);
        },
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
                CustomText(productName ?? "").ds().bold(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        if (maxRetailPrice != null)
                          Row(
                            children: [
                              CustomText("₹$maxRetailPrice ")
                                  .decoration(TextDecoration.lineThrough)
                                  .ds()
                                  .fontWeight(FontWeight.w900),
                              CustomText(
                                      "${PriceUtils.getOfferPercentage(maxRetailPrice, sellingPrice)?.toStringAsFixed(2)}%")
                                  .ds()
                                  .fontSize(10)
                            ],
                          ),
                        CustomText(
                                "₹${sellingPrice?.toString() ?? ""}, ${productOptionValueName ?? ""}")
                            .dm()
                            .bold()
                            .textColor(Theme.of(context).primaryColor),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        iconSize: 28,
                        padding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                        constraints: BoxConstraints(maxWidth: 20),
                        icon: Icon(
                          Icons.add_circle_rounded,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
