import 'package:flutter/material.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';
import 'package:web_project/app/modules/shared/responsive/responsive.dart';
import 'package:web_project/app/modules/shared/widgets/badge.dart';

class BadgeRow extends StatelessWidget {
  const BadgeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: ytbDarkThemeIconColor,
          thickness: 0.4,
          height: 0.4,
        ),
        Container(
          height: Responsive.isTablet(context) ? 52 : 56,
          width: double.maxFinite,
          color: ytbDarkThemeSecondary,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Badge(label: 'Tudo', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 1', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 2', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 3', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 4', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 5', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 6', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 7', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 8', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 9', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 10', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 11', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 12', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 13', color: ytbDarkThemeBadgeColor),
              Badge(label: 'Tema 14', color: ytbDarkThemeBadgeColor),
            ],
          ),
        ),
        Divider(
          color: ytbDarkThemeIconColor,
          thickness: 0.4,
          height: 0.4,
        ),
      ],
    );
  }
}
