import 'package:flutter/material.dart';
import 'package:gradelander/pages/page.dart';

import '../widgets/navigation.dart';

class SettingsPage extends BasicPage {
  SettingsPage({required super.switchSiteCallback, required super.selectedPage});

  @override
  State<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
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
      return const Text("Settingspage");
    }
  }

}