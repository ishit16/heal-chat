import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTopImage extends StatelessWidget {
  final double imagePadding;
  final String imageAddress;
  const AuthTopImage(
      {super.key, required this.imageAddress, required this.imagePadding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: imagePadding,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(imageAddress),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(
          height: imagePadding,
        ),
      ],
    );
  }
}
