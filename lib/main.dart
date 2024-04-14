import 'package:flutter/material.dart';
import 'package:gradelander/pages/grades.dart';
import 'package:gradelander/pages/home.dart';
import "package:gradelander/pages/page.dart";
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

  late Map<int, BasicPage> pages;

  @override
  void initState() {
    super.initState();
    pages = {
      0: HomePage(
          selectedPage: currentSelectedPage,
          switchSiteCallback: siteSwitchIndexCallback),
      1: GradesPage(
          selectedPage: currentSelectedPage,
          switchSiteCallback: siteSwitchIndexCallback),
      2: SettingsPage(
          selectedPage: currentSelectedPage,
          switchSiteCallback: siteSwitchIndexCallback)
    };
  }

  @override
  Widget build(BuildContext context) {
    var mqSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: mqSize.width < 1000.toDouble()
            ? NavBar(
                selectedPage: currentSelectedPage,
                switchSiteCallback: siteSwitchIndexCallback,
              )
            : null,
        body: Center(
            child: pages[currentSelectedPage]),
      ),
    );
  }
}
