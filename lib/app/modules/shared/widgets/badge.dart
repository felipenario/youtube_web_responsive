import 'package:flutter/material.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';

class Badge extends StatelessWidget {
  final String label;
  final Color color;

  const Badge({Key? key, required this.label, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: ytbDarkThemeIconColor, width: 0.3),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: ytbWhite),
        ),
      ),
    );
  }
}
