import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  const FacilityItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.total,
  });

  final String name;
  final String imageUrl;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle,
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
