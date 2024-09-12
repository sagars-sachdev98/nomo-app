import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';

class CategoryCard extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  const CategoryCard({super.key, this.imgUrl,this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Theme.of(context).colorScheme.onSurface,
            child: SvgPicture.asset(imgUrl ?? ""),
          ),
          CustomText(title ?? "").dm()
        ],
      ),
    );
  }
}
