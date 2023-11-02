import 'package:flutter/material.dart';
import 'package:samplefimga/view/screens/favourites/favourites_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  final PageController _pageController = PageController();
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();

    _screens = [
      const FavouritesScreen(),
      const SizedBox(),
      const SizedBox(),
      const SizedBox(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: _screens.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _screens[index];
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Container(
              width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2)
                ),
                child: Icon(Icons.home_outlined)), activeIcon: Container(
                width: 65,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Icon(Icons.home)), label: 'Favourites'),
            const BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined), activeIcon: Icon(Icons.list_alt), label: 'List'),
            const BottomNavigationBarItem(icon: Icon(Icons.format_align_left), activeIcon: Icon(Icons.format_align_left), label: 'Leftovers'),
            const BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), activeIcon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
