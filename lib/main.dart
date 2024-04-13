import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        body: Center(child: () {
          if (mqSize.width >= 1000.toDouble()) {
            return Row(
              children: [
                NavRail(
                  selectedPage: currentSelectedPage,
                  switchSiteCallback: siteSwitchIndexCallback,
                ),
                const VerticalDivider(
                  width: 1,
                  thickness: 1,
                ),
                const Text("Horizontal Layout")
              ],
            );
          } else {
            return Column(
              children: [Text("Vertical Layout")],
            );
          }
        }()),
      ),
    );
  }
}
