import 'package:flutter/material.dart';
import 'package:gradelander/pages/page.dart';

import '../widgets/navigation.dart';

class HomePage extends BasicPage {
  HomePage({required super.switchSiteCallback, required super.selectedPage});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
      return const Text("Homepage");
    }
  }

}