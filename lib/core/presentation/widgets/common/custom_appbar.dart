
import 'package:flutter/material.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onBackPress;
  final bool showBackButton;

  const CustomAppBar({
    Key? key,
    this.title,
    this.onBackPress,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: CustomText(title ?? "").hs(),
        leading: showBackButton
            ? IconButton(
                onPressed: onBackPress,
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              )
            : const SizedBox(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
