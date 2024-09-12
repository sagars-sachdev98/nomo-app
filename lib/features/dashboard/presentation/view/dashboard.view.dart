// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';
// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nomo_app/core/data/extensions/assets.extensions.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_carousel.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_text.dart';
import 'package:nomo_app/core/presentation/widgets/common/custom_textfield.dart';
import 'package:nomo_app/features/dashboard/presentation/widgets/category_card.widget.dart';
import 'package:nomo_app/features/dashboard/presentation/widgets/product_card.widget.dart';
// import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class DashboardView extends StatefulWidget {
  static String routeName = "/dashboard_view";
  DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final TextEditingController searchController = TextEditingController();

  int _currentPage = 0;

  ScrollController scrollController = ScrollController();

  void changeTab(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBodyBehindAppBar: true,
      extendBody: true,
     
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0), // Adjust padding for floating effect
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60), // Rounded corners
          child: Container(
            height: 70, // Adjust height of the bottom bar
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor, // Bottom bar color
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 5,
                  blurRadius: 10, // Adjust shadow blur
                  offset: const Offset(0, 3), // Offset for shadow to create elevation
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 32,
                    color: _currentPage == 0 ? Colors.black : Colors.white, // Change color based on selection
                    onPressed: () => changeTab(0),
                  ),
                  IconButton(
                    icon: const Icon(Icons.grid_view),
                    iconSize: 32,
                    color: _currentPage == 1 ? Colors.black : Colors.white, // Change color based on selection
                    onPressed: () => changeTab(1),
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    iconSize: 32,
                    color: _currentPage == 2 ? Colors.black : Colors.white, // Change color based on selection
                    onPressed: () => changeTab(2),
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
                    iconSize: 32,
                    color: _currentPage == 3 ? Colors.black : Colors.white, // Change color based on selection
                    onPressed: () => changeTab(3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar with a Custom Search Bar and Header
          SliverAppBar(
            backgroundColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.09),
            floating: true,
            pinned: false,
            snap: false,
            expandedHeight: 130.0,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText("Delivery in just 10 Mins")
                                  .db()
                                  .bold(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  CustomText(" Kalyan, Thane - Mum").ds(),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const CircleAvatar(
                            child: Icon(Icons.person),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
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
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
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
                  ],
                ),
              ),
            ),
          ),

          // Sliver for the carousel
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: CustomCarousel(
                items: [
                  Image.asset("carousel_1".png),
                  Image.asset("carousel_2".png),
                  Image.asset("carousel_2".png),
                ],
                aspectRatio: 2.1,
              ),
            ),
          ),

          // Sliver for the Categories section
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText("Categories 😋").db().bold(),
                  TextButton(
                      onPressed: () {}, child: CustomText("See all").db()),
                ],
              ),
            ),
          ),

          // Sliver for the horizontal list of categories
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    imgUrl: "apple".svg,
                    title: "Apple",
                  );
                },
                itemCount: 8,
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText("Best Selling 🔥").db().bold(),
                  TextButton(
                      onPressed: () {}, child: CustomText("See all").db()),
                ],
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.8),
              itemCount: 8,
              itemBuilder: (context, index) {
                return const ProductCard(
                  productName: "Bell Pepper Red",
                  maxRetailPrice: 90,
                  sellingPrice: 42,
                  productOptionValueName: "1kg",
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
