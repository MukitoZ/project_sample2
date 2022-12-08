import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_sample2/home_screen.dart';
import 'package:project_sample2/profile_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedNavbar = 0;
  final List _widgetOption = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedNavbar),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset("svg/icon/ico_botnav_home_on.svg"),
              icon: SvgPicture.asset("svg/icon/ico_botnav_home_off.svg"),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("svg/icon/ico_botnav_profile_off.svg"),
              activeIcon:
                  SvgPicture.asset("svg/icon/ico_botnav_profile_on.svg"),
              label: "Profile")
        ],
        currentIndex: _selectedNavbar,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
