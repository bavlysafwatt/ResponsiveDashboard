import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/assets_gen.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding:
            const EdgeInsets.only(left: 31, right: 42, top: 30, bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style:
                      AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
