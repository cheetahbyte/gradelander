import 'package:flutter/material.dart';

import '../widgets/navigation.dart';

class BasicPage extends StatefulWidget {
  Function(int) switchSiteCallback;
  int selectedPage;

  BasicPage({super.key, required this.switchSiteCallback, required this.selectedPage});

  @override
  State<BasicPage> createState() => PageState();
}

class PageState extends State<BasicPage> {

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQuerySize = mediaQuery.size;
    final int mediaQuerySizeWidth = mediaQuerySize.width.toInt();
    if (mediaQuerySizeWidth > 1000) {
      return Row(
        children: [
          NavRail(
            selectedPage: widget.selectedPage,
            switchSiteCallback: widget.switchSiteCallback,
          ),
          const VerticalDivider(
            width: 1,
            thickness: 1,
          ),
        ],
      );
    } else {
      return const Column(children: [Text("Horizontal Layout")]);
    }
  }
}
