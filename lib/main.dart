/////////////////////////////////////////////////
//  Instagram: @invisionchip
//  GitHub: https://github.com/chipinvision
//  LIKE  |  SHARE  |  FOLLOW
/////////////////////////////////////////////////
import 'package:boyo_rooms/views/account.dart';
import 'package:boyo_rooms/views/favourites.dart';
import 'package:boyo_rooms/views/homescreen.dart';
import 'package:boyo_rooms/views/notifications.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boyo Rooms',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int cindex = 0;

  void _navigateBar(int index){
    setState(() {
      cindex = index;
    });
  }

  List views = const [
    HomeScreen(),
    FavouritesScreen(),
    NotificationsScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFF3F2),
        body: views[cindex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0.0,
            backgroundColor: const Color(0xffFFF3F2),
            currentIndex: cindex,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xffFCBCB8),
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourites'),
              BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notifications'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            ],
            onTap: _navigateBar,
        ),
      ),
    );
  }
}
