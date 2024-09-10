import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ExpandedShimmerCard extends StatelessWidget {
  const ExpandedShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[600]!,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
      ),
    );
  }
}
