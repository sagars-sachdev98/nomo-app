// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

class CustomBorderLine extends StatelessWidget {
  final Widget child;
  const CustomBorderLine({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side:
            BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.4)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 0, right: 15, bottom: 15),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                      width: 2, color: Theme.of(context).colorScheme.primary))),
          child: child,
        ),
      ),
    );
  }
}
