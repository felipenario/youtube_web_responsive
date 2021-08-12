import 'package:flutter/material.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';
import 'package:web_project/app/modules/shared/widgets/side_menu_button.dart';

class CollapsedSideMenu extends StatelessWidget {
  const CollapsedSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 72,
      color: ytbDarkThemeSecondary,
      padding: const EdgeInsets.only(top: 12),
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SideMenuButton.collapsed(icon: Icons.home, label: 'Início'),
          SideMenuButton.collapsed(icon: Icons.explore, label: 'Explorar'),
          SideMenuButton.collapsed(
              icon: Icons.subscriptions, label: 'Inscrições'),
          SideMenuButton.collapsed(
              icon: Icons.video_library, label: 'Biblioteca'),
        ],
      )),
    );
  }
}
