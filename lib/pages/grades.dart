import 'package:flutter/material.dart';
import 'package:gradelander/pages/page.dart';

import '../widgets/navigation.dart';

class GradesPage extends BasicPage {
  GradesPage({required super.switchSiteCallback, required super.selectedPage});

  @override
  State<GradesPage> createState() => GradesPageState();
}

class GradesPageState extends State<GradesPage> {
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
      return const Text("Gradespage");
    }
  }

}