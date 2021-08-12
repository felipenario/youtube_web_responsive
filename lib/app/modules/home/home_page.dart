import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_project/app/modules/home/home_store.dart';
import 'package:web_project/app/modules/shared/colors/colors.dart';
import 'package:web_project/app/modules/shared/responsive/responsive.dart';
import 'package:web_project/app/modules/shared/widgets/badge_row.dart';
import 'package:web_project/app/modules/shared/widgets/collapsed_side_menu.dart';
import 'package:web_project/app/modules/shared/widgets/header.dart';
import 'package:web_project/app/modules/shared/widgets/side_menu.dart';
import 'package:web_project/app/modules/shared/widgets/video_thumbnail.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  double getHeaderHight() {
    if (Responsive.isMobile(context) && Responsive.isMobileLandscape(context)) {
      return MediaQuery.of(context).size.height * 0.128;
    } else if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return 52;
    } else {
      return 56;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? ytbDarkThemeMobileTabletBackgroundAndBottomNavigationBar
              : ytbDarkThemeBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getHeaderHight()),
        child: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? MobileTabletHeader()
            : Header(),
      ),
      body: Responsive(
        desktop: Row(
          children: [
            MediaQuery.of(context).size.width <= 1312
                ? CollapsedSideMenu()
                : SideMenu(),
            Expanded(
              flex: MediaQuery.of(context).size.width <= 1312 ? 20 : 5,
              child: Container(
                color: ytbDarkThemeBackground,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BadgeRow(),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 24),
                        width: double.maxFinite,
                        child: GridView.count(
                          childAspectRatio: (1 / 0.9),
                          padding: const EdgeInsets.only(top: 24),
                          crossAxisSpacing: 5,
                          crossAxisCount: 4,
                          children: [
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                            VideoThumbnail(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        mobile: Column(
          children: [
            BadgeRow(),
            Expanded(
              child: ListView(
                children: [
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail()
                ],
              ),
            ),
          ],
        ),
        tablet: Column(
          children: [
            BadgeRow(),
            Expanded(
              child: GridView.count(
                childAspectRatio: (1 / 0.8),
                crossAxisCount: 2,
                children: [
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail(),
                  VideoThumbnail()
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? BottomNavigationBar(
                  backgroundColor:
                      ytbDarkThemeMobileTabletBackgroundAndBottomNavigationBar,
                  type: BottomNavigationBarType.fixed,
                  fixedColor: ytbWhite,
                  unselectedItemColor: ytbWhite,
                  currentIndex: 0,
                  items: [
                    BottomNavigationBarItem(
                      label: 'Início',
                      icon: Icon(Icons.home_outlined),
                      activeIcon: Icon(Icons.home_filled),
                    ),
                    BottomNavigationBarItem(
                      label: 'Em alta',
                      icon: Icon(Icons.whatshot_outlined),
                      activeIcon: Icon(Icons.whatshot),
                    ),
                    BottomNavigationBarItem(
                      label: 'Inscrições',
                      icon: Icon(Icons.subscriptions_outlined),
                      activeIcon: Icon(Icons.subscriptions),
                    ),
                    BottomNavigationBarItem(
                      label: 'Biblioteca',
                      icon: Icon(Icons.video_library_outlined),
                      activeIcon: Icon(Icons.video_library),
                    ),
                  ],
                )
              : null,
    );
  }
}
