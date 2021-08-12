import 'package:flutter/material.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';

class ChannelButton extends StatelessWidget {
  const ChannelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 24),
            child: CircleAvatar(
              maxRadius: 12,
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/ytc/AKedOLR3q8g3x5RXxCL_RbdDW90ZVMWfb7zQ1b0LCjoJ=s900-c-k-c0x00ffffff-no-rj'),
            ),
          ),
          Text(
            'jogandofoddaci',
            style: TextStyle(color: ytbWhite),
          ),
        ],
      ),
    );
  }
}
