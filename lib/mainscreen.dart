import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trips/home/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? page = 0;
  PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          Home(),
          Text(''),
          Text(''),
          Text(''),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Theme.of(context).textTheme.headline6!.color,
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.map,
            ),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person
            ),
            label: "You",
          ),
        ],
        onTap: navigationTapped,
        currentIndex: page!,
      ),
    );
  }

  void navigationTapped(int page) {
    pageController!.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController!.dispose();
  }
}
