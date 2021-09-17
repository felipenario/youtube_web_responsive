import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';
import 'package:web_project/app/modules/shared/responsive/responsive.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: ytbDarkThemeSecondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.menu,
                      color: ytbWhite,
                    )),
                FittedBox(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 18),
                    child: SvgPicture.asset(
                      'logo.svg',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.078,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30199,
                    padding: const EdgeInsets.only(top: 2, bottom: 2, left: 4),
                    height: 30,
                    margin: const EdgeInsets.only(left: 40),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Icon(
                            Icons.keyboard,
                            color: ytbDarkThemeIconColor,
                          ),
                        ),
                        hintText: 'Pesquisar',
                        fillColor: ytbDarkThemeBackground,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 10),
                        hintStyle: TextStyle(color: ytbDarkThemeIconColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.zero, bottomRight: Radius.zero),
                          borderSide: BorderSide(
                            width: 0.2,
                            color: ytbDarkThemeIconColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.zero, bottomRight: Radius.zero),
                          borderSide: BorderSide(
                            width: 0.2,
                            color: ytbDarkThemeIconColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.zero, bottomRight: Radius.zero),
                          borderSide: BorderSide(
                            width: 0.2,
                            color: ytbDarkThemeIconColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 30,
                    child: MaterialButton(
                      elevation: 0,
                      color: ytbDarkThemeBadgeColor,
                      onPressed: () => {},
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: ytbDarkThemeSearchIconButtonColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: ytbDarkThemeBackground,
                      child: Icon(
                        Icons.mic,
                        color: ytbWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.video_call,
                      color: ytbWhite,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.apps,
                      color: ytbWhite,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.notifications,
                      color: ytbWhite,
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    maxRadius: 15,
                    backgroundImage: AssetImage('assets/channel_image.jpg'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileTabletHeader extends StatelessWidget {
  const MobileTabletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobileLandscape(context)
          ? MediaQuery.of(context).size.height * 0.128
          : MediaQuery.of(context).size.height * 0.075,
      color: ytbDarkThemeSecondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            clipBehavior: Clip.antiAlias,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: SvgPicture.asset(
                'logo.svg',
                fit: BoxFit.scaleDown,
                width: Responsive.isMobile(context)
                    ? MediaQuery.of(context).size.width * 0.31
                    : MediaQuery.of(context).size.width * 0.20,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.search_outlined,
                  color: ytbWhite,
                  size: 32,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 22),
                child: CircleAvatar(
                  maxRadius: 15,
                  backgroundImage: AssetImage('assets/channel_image.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
