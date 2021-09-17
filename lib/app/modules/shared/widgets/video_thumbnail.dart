import 'package:flutter/material.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';
import 'package:web_project/app/modules/shared/responsive/responsive.dart';

class VideoThumbnail extends StatelessWidget {
  const VideoThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * 0.1947,
      margin: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 0 : 8,
          vertical: Responsive.isMobile(context) ? 5 : 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset('assets/thumbnail.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: Responsive.isMobile(context) ? 12 : 0,
                  bottom: Responsive.isMobile(context) ? 16 : 0,
                  top: Responsive.isMobile(context) ? 4 : 0),
              padding: const EdgeInsets.only(top: 12),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 12),
                          child: CircleAvatar(
                            maxRadius: Responsive.isMobile(context)
                                ? 20
                                : Responsive.isTablet(context)
                                    ? 22
                                    : 16,
                            backgroundImage:
                                AssetImage('assets/channel_image.jpg'),
                          ),
                        ),
                      ],
                    ),
                    Responsive.isMobile(context) || Responsive.isTablet(context)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Text(
                                  'Revelações 🤯 - Manhunt 2 #15 (Final)',
                                  style: TextStyle(
                                      color: ytbWhite,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                'jogandofoddaci • 16.886 visualizações • há 2 dias',
                                style: TextStyle(color: ytbDarkThemeIconColor),
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Text(
                                  'Revelações 🤯 - Manhunt 2 #15 (Final)',
                                  style: TextStyle(
                                      color: ytbWhite,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                'jogandofoddaci',
                                style: TextStyle(color: ytbDarkThemeIconColor),
                              ),
                              Text(
                                '16.886 visualizações • há 2 dias',
                                style: TextStyle(color: ytbDarkThemeIconColor),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
