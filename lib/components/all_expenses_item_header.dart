import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});

  final String image;
  final Color? imageBackground;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackground ?? const Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4eb7f2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 50),
            child: AspectRatio(
              aspectRatio: 1,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: imageBackground == null
                    ? const Color(0xff064061)
                    : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
