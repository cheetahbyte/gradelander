import 'package:flutter/material.dart';

class NavRail extends StatefulWidget {
  final Function(int) switchSiteCallback;
  final int selectedPage;

  const NavRail(
      {super.key,
      required this.selectedPage,
      required this.switchSiteCallback});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        selectedIndex: widget.selectedPage,
        groupAlignment: groupAlignment,
        onDestinationSelected: (int index) => widget.switchSiteCallback(index),
        labelType: labelType,
        leading: showLeading
            ? FloatingActionButton(
                onPressed: () {},
                elevation: 0,
                child: const Icon(Icons.add),
              )
            : const SizedBox(),
        trailing: showTrailing
            ? IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded))
            : const SizedBox(),
        destinations: const <NavigationRailDestination>[
          NavigationRailDestination(
            icon: Icon(Icons.home_outlined),
            label: Text("Home"),
            selectedIcon: Icon(Icons.home),
          ),
          NavigationRailDestination(
              icon: Icon(Icons.school_outlined),
              label: Text("Grades"),
              selectedIcon: Icon(Icons.school)),
          NavigationRailDestination(
              icon: Icon(Icons.settings_outlined),
              label: Text("Settings"),
              selectedIcon: Icon(Icons.settings))
        ]);
  }
}

class NavBar extends StatefulWidget {
  final Function(int) switchSiteCallback;
  final int selectedPage;
  const NavBar(
      {super.key,
      required this.selectedPage,
      required this.switchSiteCallback});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        onDestinationSelected: (int index) => widget.switchSiteCallback(index),
        selectedIndex: widget.selectedPage,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school_outlined),
            label: 'Grades',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ]);
  }
}
