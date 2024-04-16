import 'package:flutter/material.dart';
import 'package:gradelander/pages/grades.dart';
import 'package:gradelander/pages/home.dart';
import 'package:gradelander/pages/settings.dart';
import 'package:gradelander/widgets/navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentSelectedPage = 0;

  void siteSwitchIndexCallback(int pageIndex) {
    setState(() {
      currentSelectedPage = pageIndex;
    });
  }

  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = const [HomePage(), GradesPage(), SettingsPage()];
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQuerySize = mediaQuery.size;
    final int mediaQuerySizeWidth = mediaQuerySize.width.toInt();
    final bool isLandscape = mediaQuerySizeWidth > 1000.toDouble();
    final page = pages[currentSelectedPage];
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: !isLandscape
            ? NavBar(
                selectedPage: currentSelectedPage,
                switchSiteCallback: siteSwitchIndexCallback,
              )
            : null,
        body: SafeArea(child: Center(child: () {
          if (isLandscape) {
            return Row(children: [
              NavRail(
                selectedPage: currentSelectedPage,
                switchSiteCallback: siteSwitchIndexCallback,
              ),
              const VerticalDivider(width: 1, thickness: 1),
              const Text("Not currently Implemented")
            ]);
          } else {
            return Column(children: [page]);
          }
        }())),
      ),
    );
  }
}
