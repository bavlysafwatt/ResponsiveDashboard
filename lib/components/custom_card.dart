import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/assets_gen.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 190,
      child: Container(
        padding: const EdgeInsets.only(left: 31, right: 42),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(child: SizedBox(height: 20)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name card',
                          style: AppStyles.styleRegular16(context)
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Syah Bandi',
                          style: AppStyles.styleMedium20(context),
                        ),
                      ],
                    ),
                    SvgPicture.asset(Assets.imagesGallery),
                  ],
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold20(context)
                      .copyWith(color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            const Flexible(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
