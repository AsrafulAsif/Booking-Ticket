import 'package:booktickets/utils/app_styles.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'home_screen.dart';

class NewBottomBar extends StatefulWidget {
  const NewBottomBar({super.key});

  @override
  State<NewBottomBar> createState() => _NewBottomBarState();
}

class _NewBottomBarState extends State<NewBottomBar> {

  int selectedPos = 0;//inisializing selected tab position
  double bottomNavBarHeight = 60;//inisializing bottom navigation height
  //---------------------------widget list-----------------------
  static final List<Widget> _widgetoption = <Widget>[
    const HomeScreen(),
    const Center(child: Text('Search')),
    const Center(child: Text('Ticket')),
    const Center(child: Text('Profile')),
  ];

  //----------------------------list of icons and tab items-----------------------
  List<TabItem> tabItems = List.of([
    TabItem(
      FluentSystemIcons.ic_fluent_home_regular,
      "Home",
      Styles.primaryColor,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
      circleStrokeColor: Colors.white,
    ),
    TabItem(
      FluentSystemIcons.ic_fluent_search_regular,
      "Search",
      Colors.orange,
      labelStyle: const TextStyle(
        // color: Colors.red,
        fontWeight: FontWeight.normal,
      ),
    ),
    TabItem(
      FluentSystemIcons.ic_fluent_ticket_regular,
      "Reports",
      Colors.red,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
      circleStrokeColor: Colors.white,
    ),
    TabItem(
      FluentSystemIcons.ic_fluent_person_regular,
      "Notifications",
      Colors.cyan,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
  ]);

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
            child: _widgetoption[selectedPos],
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      backgroundBoxShadow: const <BoxShadow>[
        BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: const Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
          debugPrint(_navigationController.value.toString());
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}
