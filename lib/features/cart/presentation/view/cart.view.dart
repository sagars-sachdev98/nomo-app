import 'package:flutter/material.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';
import 'package:nomo_app/features/cart/presentation/widgets/bill_summary_item.widget.dart';
import 'package:nomo_app/features/cart/presentation/widgets/gradient_offer_card.widget.dart';
import 'package:nomo_app/features/product/product_details/presentation/widgets/product_option_card.widget.dart';
import 'package:nomo_app/features/sub_categories/presentation/widgets/sub_categories.view.dart';

class CartView extends StatelessWidget {
  static String routeName = "/cart_view";

  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        title: CustomText("Your Cart").db().bold(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Column(
            children: [
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 6),
                child: Row(
                  children: [
                    const Icon(Icons.near_me, size: 36),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText("Ordering for Sagar").db().bold(),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomText(
                                      "B-003, Blue pearl CHS, Malad west - 400064",
                                    )
                                        .lm()
                                        .overflow(TextOverflow.ellipsis)
                                        .maxLines(1),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const GradientCard(),
              CustomText("Review items").db().bold(),
              Card(
                color: Theme.of(context).primaryColor.withOpacity(0.33),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Row for Delivery and item count
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText("Delivery in 8 Mins")
                                .db()
                                .textColor(Colors.green),
                            Row(
                              children: [
                                Image.asset("grocery_delivery".png),
                                CustomText("4 items").lm(),
                              ],
                            ),
                          ],
                        ),
                      ),
                            
                      // ListView or equivalent for product cards
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap:
                            true, // Allows ListView to shrink to the height of its content
                        physics:
                            const NeverScrollableScrollPhysics(), // Prevents it from scrolling separately
                        itemCount: 5, // Number of items
                        itemBuilder: (context, index) {
                          return const ProductOptionCard(isProductCard: true);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 6,),
              InkWell(
                onTap: () {},
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText("Missed Something? ").db(),
                        CustomText("Add More items")
                            .db()
                            .textColor(Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 6,),
              CustomText("Bill Summary").db().bold(),
              Card(
                color: Theme.of(context).primaryColor.withOpacity(0.33),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    BillSummaryItemWidget(title: "MRP Total", value: 140),
                    BillSummaryItemWidget(title: "GST (18%)", value: 0),
                    BillSummaryItemWidget(title: "Items Savings", value: 40),
                    BillSummaryItemWidget(title: "Delivery Fee", value: 0),
                    SizedBox(height: 4),
                    Divider(thickness: 2),
                    SizedBox(height: 6),
                    BillSummaryItemWidget(title: "To Pay", value: 100),
                  ]),
                ),
              ),
               const SizedBox(height: 6,),
              CustomText("Review your order to avoid cancellations").dm().bold(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                              "NOTE: Orders cannot be canceled and are non-refundable once packed for delivery.")
                          .dm(),
                      CustomText("Read Cancellation Policy")
                          .dm()
                          .decoration(TextDecoration.underline)
                          .textColor(Theme.of(context).primaryColor)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: kToolbarHeight+50), // Add space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
