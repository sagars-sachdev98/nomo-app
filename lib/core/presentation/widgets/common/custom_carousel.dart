import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  final List<Widget> items;
  final double aspectRatio;
  final bool enableInfiniteScroll;
  final bool autoPlay;
  final double viewportFraction;
  final double? itemIndicatorPadding;

  const CustomCarousel({
    super.key,
    required this.items,
    this.aspectRatio = 1.0,
    this.enableInfiniteScroll = false,
    this.autoPlay = false,
    this.viewportFraction = 1.0,
    this.itemIndicatorPadding = 2
  });

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _current = 0;
  final carousel.CarouselSliderController _controller =
      carousel.CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        carousel.CarouselSlider(
          items: widget.items,
          carouselController: _controller,
          options: carousel.CarouselOptions(
            viewportFraction: widget.viewportFraction,
            aspectRatio: widget.aspectRatio,
            enableInfiniteScroll: widget.enableInfiniteScroll,
            autoPlay: widget.autoPlay,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
         SizedBox(
          height: widget.itemIndicatorPadding,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.items.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 28 : 12.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: _current == entry.key
                      ? BoxShape.rectangle
                      : BoxShape.circle,
                  borderRadius: _current == entry.key
                      ? const BorderRadius.all(Radius.circular(4))
                      : null,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
