import 'package:e_commerce/components/list_tile/divider_list_tile.dart';
import 'package:e_commerce/components/network_image_with_loader.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:e_commerce/constants/icon_constants.dart';
import 'package:e_commerce/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/profile_card.dart';
import 'components/profile_menu_item_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileCard(
            name: "Jyoshna",
            email: "giftshopping@gmail.com",
            imageSrc: userImage,
            press: () {
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding * 1.5),
            child: GestureDetector(
              onTap: () {},
              child: const AspectRatio(
                aspectRatio: 1.8,
                child:
                    NetworkImageWithLoader(adImage),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              "Account",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          // ProfileMenuListTile(
          //   text: "Orders",
          //   svgSrc: iconOrder,
          //   press: () {
          //   },
          // ),
          // ProfileMenuListTile(
          //   text: "Returns",
          //   svgSrc: iconReturn,
          //   press: () {},
          // ),
          // ProfileMenuListTile(
          //   text: "Wishlist",
          //   svgSrc: iconWishlist,
          //   press: () {},
          // ),
          ProfileMenuListTile(
            text: "Addresses",
            svgSrc:iconAddress,
            press: () {
            },
          ),
          // ProfileMenuListTile(
          //   text: "Payment",
          //   svgSrc: iconCard,
          //   press: () {
          //   },
          // ),
          ProfileMenuListTile(
            text: "Wallet",
            svgSrc:iconWallet,
            press: () {
              Navigator.pushNamed(context, walletScreenRoute);
            },
          ),
          // const SizedBox(height: defaultPadding),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //       horizontal: defaultPadding, vertical: defaultPadding / 2),
          //   child: Text(
          //     "Personalization",
          //     style: Theme.of(context).textTheme.titleSmall,
          //   ),
          // ),
          // DividerListTileWithTrilingText(
          //   svgSrc: iconNotification,
          //   title: "Notification",
          //   trilingText: "Off",
          //   press: () {
          //   },
          // ),
          // ProfileMenuListTile(
          //   text: "Preferences",
          //   svgSrc: iconPreferences,
          //   press: () {
          //     Navigator.pushNamed(context, preferencesScreenRoute);
          //   },
          // ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              "Settings",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ProfileMenuListTile(
            text: "Display & Brightness",
            svgSrc: iconSetting,
            press: () {
              Navigator.pushNamed(context, displayBrightness);
            },
          ),
          ProfileMenuListTile(
            text: "Language",
            svgSrc: iconLanguage,
            press: () {
            },
          ),
          // ProfileMenuListTile(
          //   text: "Location",
          //   svgSrc: iconLocation,
          //   press: () {},
          // ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              "Help & Support",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ProfileMenuListTile(
            text: "Get Help",
            svgSrc: iconHelp,
            press: () {
            },
          ),
          ProfileMenuListTile(
            text: "FAQ",
            svgSrc: iconFAQ,
            press: () {},
            isShowDivider: false,
          ),
          const SizedBox(height: defaultPadding),

          // Log Out
          ListTile(
            onTap: () {},
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
             iconLogout,
              height: 24,
              width: 24,
              colorFilter: const ColorFilter.mode(
                errorColor,
                BlendMode.srcIn,
              ),
            ),
            title: const Text(
              "Log Out",
              style: TextStyle(color: errorColor, fontSize: 14, height: 1),
            ),
          )
        ],
      ),
    );
  }
}
