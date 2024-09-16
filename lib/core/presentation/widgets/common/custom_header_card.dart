
import 'package:flutter/material.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/size_config.dart';
import 'custom_text.dart';

class CustomHeaderCard extends StatelessWidget {
  final String title;
  final double? heightCard;
  const CustomHeaderCard({super.key, required this.title, this.heightCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightCard ?? SizeConfig.blockSizeVertical! * 7,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("dash_bg".png), fit: BoxFit.fitWidth),
        borderRadius: BorderRadius.circular(8)
          ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Align(
          alignment: Alignment.centerLeft,
          child: CustomText(title)
              .hm()
              .textColor(Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
