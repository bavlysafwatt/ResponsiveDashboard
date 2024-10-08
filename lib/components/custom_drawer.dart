import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/drawer_item.dart';
import 'package:responsive_dashboard/components/drawer_items_list_view.dart';
import 'package:responsive_dashboard/components/user_info_list_tile.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/assets_gen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Bavly Safwat',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting System', image: Assets.imagesSettings),
                    isActive: false),
                DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout', image: Assets.imagesLogout),
                    isActive: false),
                SizedBox(height: 25),
              ],
            ),
          )
        ],
      ),
    );
  }
}
