import 'package:flutter/material.dart';
import 'package:user_task/core/theme/app_text_theme/text_theme.dart';
import 'package:user_task/utils/localization/app_localizations.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Function enTap;
  final Function arTap;

  CustomAppBar({Key? key, required this.arTap, required this.enTap})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);
  late String selectedItem;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        AppLocalizations.of(context).translate("users"),
        style: CustomTextTheme().displayLarge,
      ),
      actions: [
        PopupMenuButton(onSelected: (value) {
          selectedItem = value;
        }, itemBuilder: (BuildContext bc) {
          return [
            PopupMenuItem(
              value: '/ar',
              onTap: () {
                arTap();
              },
              child: Text(
                AppLocalizations.of(context).translate("arabic"),
                style: CustomTextTheme().bodyMedium,
              ),
            ),
            PopupMenuItem(
              value: '/en',
              onTap: () {
                enTap();
              },
              child: Text(
                AppLocalizations.of(context).translate("english"),
                style: CustomTextTheme().bodyMedium,
              ),
            ),
          ];
        })
      ],
    );
  }
}
