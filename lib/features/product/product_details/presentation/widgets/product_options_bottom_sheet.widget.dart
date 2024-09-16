import 'package:flutter/material.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_button.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';
import 'package:nomo_app/features/product/product_details/presentation/widgets/product_option_card.widget.dart';

class ProductOptionsBottomSheet {
  static void bottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 400.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText("Apple").db(),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(vertical: 2),
                              child: ProductOptionCard(),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CustomPrimaryButton(
                          onPress: () {},
                          isExpanded: true,
                          textValue: CustomText("Confirm")
                              .lm()
                              .textColor(Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
