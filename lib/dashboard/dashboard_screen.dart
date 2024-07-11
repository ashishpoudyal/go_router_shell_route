import 'package:flutter/material.dart';
import 'package:go_router_bottom_nav/routes/app_routes.dart';

class DashboardScreen extends StatefulWidget {
  final int initialIndex;
  const DashboardScreen({super.key, this.initialIndex = 0});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentindex = 0;

  @override
  void initState() {
    currentindex = widget.initialIndex;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) {
            switch (value) {
              case 0:
                HomeRoute().go(context);

                break;
              case 1:
                UserRoute().go(context);
              default:
                HomeRoute().go(context);
            }

            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "user"),
          ]),
    );
  }
}
