import 'package:ev_charge/activity_screen/acitivity_screen.dart';
import 'package:ev_charge/community_screen/community_screen.dart';
import 'package:ev_charge/home_screen/home_screen.dart';
import 'package:ev_charge/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const ActivityScreen(),
    const CommunityScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/Group 33372.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/Group 33659.png'),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/Group 33784.png'),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/Group.png'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
