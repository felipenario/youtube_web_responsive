import 'package:flutter/material.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';

class SideMenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isCollapsed;

  const SideMenuButton(
      {Key? key,
      required this.icon,
      required this.label,
      this.isCollapsed = false})
      : super(key: key);

  const SideMenuButton.collapsed(
      {Key? key,
      required this.icon,
      required this.label,
      this.isCollapsed = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isCollapsed) {
      return Container(
        height: 73.600,
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            children: [
              Icon(
                icon,
                color: ytbDarkThemeIconColor,
              ),
              Text(
                label,
                style: TextStyle(color: ytbDarkThemeIconColor, fontSize: 10),
              )
            ],
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () => {},
        child: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 24),
                  child: Icon(
                    icon,
                    color: ytbDarkThemeIconColor,
                    size: 22,
                  ),
                ),
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: ytbWhite),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
