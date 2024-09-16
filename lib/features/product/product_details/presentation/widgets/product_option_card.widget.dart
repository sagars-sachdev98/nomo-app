import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_button.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';

class ProductOptionCard extends StatelessWidget {
  final double? maxRetailPrice;
  final double? sellingPrice;
  final String? productName;
  final String? productOptionName;
  final String? productOptionValueName;
  final String? productImg;
  final String? productDescription;
  final bool isProductCard;
  const ProductOptionCard({
    super.key,
    this.maxRetailPrice = 90,
    this.productName = "Apple",
    this.productOptionName = "Select Unit",
    this.productOptionValueName = "1Kg",
    this.sellingPrice = 42,
    this.productImg,
    this.productDescription =
        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    this.isProductCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "apple".svg,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isProductCard) CustomText(productName ?? "").db(),
                    CustomText(productOptionValueName ?? "").lm(),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                CustomText("₹$sellingPrice").dm().bold(),
                const SizedBox(
                  width: 6,
                ),
                CustomText("₹$maxRetailPrice")
                    .decoration(TextDecoration.lineThrough)
                    .fontSize(12),
              ],
            ),
            CustomPrimaryButton(
              onPress: () {},
              textValue: CustomText("ADD")
                  .lm()
                  .textColor(Theme.of(context).colorScheme.onPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
