import 'package:flutter/material.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_textfield.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onBackPress;
  final bool showBackButton;

   CustomAppBar({
    super.key,
    this.title,
    this.onBackPress,
    this.showBackButton = true,
  });

    final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(116),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // ClipPath(clipper: CustomShape(),child: Container(height: 160,color: Color(0xffFDF3),)),
          Image.asset(
            "app_bar_1".png, // Update the path as per your image location
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: CustomTextField(
                controller: searchController,
                hintText: "Search Namkeen",
                isRequired: false,
                isEnable: true,
                textInputType: TextInputType.text,
                prefixIcon: Icon(Icons.search,
                    color: Theme.of(context).colorScheme.primary),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
                borderRadius: 24,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                focusedColor: Theme.of(context).colorScheme.primary,
                enabledBorder: Theme.of(context).colorScheme.onPrimary,
                isDense: true,
                onChanged: (value) {
                  // Handle search query changes here
                  print('Search Query: $value');
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a search term';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
      // elevation: 0, // Removes the shadow effect
      // backgroundColor: Colors.transparent, // Makes the background transparent
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(116);
}
