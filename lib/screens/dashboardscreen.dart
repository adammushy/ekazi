// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ekazi/components/bottom_navigation.dart';
import 'package:ekazi/constants/app_colors.dart';
import 'package:ekazi/screens/dashboard/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:nb_utils/nb_utils.dart';

class WADashboardScreen extends StatefulWidget {
  static String tag = '/WADashboardScreen';

  const WADashboardScreen({super.key});

  @override
  WADashboardScreenState createState() => WADashboardScreenState();
}

class WADashboardScreenState extends State<WADashboardScreen> {
  int _selectedIndex = 0;
  bool heart = false;
  final controller = PageController();

  final _pages = <Widget>[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  var storage = const FlutterSecureStorage();

  // late AuthService authService;
  var profileImage = "";
  var userName = "";
  var role_name = "";

  var userImage = "";
  var phone = "";
  var avatar = "/office/media/avatars/300-1.jpg";
  bool? isDarkMode = true;

  @override
  void initState() {
    // authService = Provider.of<AuthService>(context, listen: false);
    // Provider.of<AuthService>(context, listen: false).getUser();

    init();
    getUserData();

    super.initState();
    // init();
  }

  Future<void> getUserData() async {
    const storage = FlutterSecureStorage();
    var token = await storage.read(key: 'token');
    print("Token: $token");

    var name = await storage.read(key: 'full_name');
    var role = await storage.read(key: 'user_roleName');
    print("username 11 ::  $name  with role $role");

    setState(
      () {
        userName = name!;
        role_name = role!;
        // userImage = authService.user.imageId!;
        // phone = authService.user.phoneNumber!;

        log(userImage);
      },
    );

    print("username ::  $userName");
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: MastraBottomBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          curve: Curves.bounceInOut,
          bubbleColor: colorApp.withOpacity(0.1),
          onTap: (index) {
            if (role_name == "customer") {
              if (index == 2 || index == 1 || index == 3) {
                toasty(
                  context,
                  'Coming Soon',
                );
              } else {
                setState(() {
                  _selectedIndex = index;
                });
              }
            } else {
              if (index == 2 || index == 1) {
                toasty(
                  context,
                  'Coming Soon',
                );
              } else {
                setState(() {
                  _selectedIndex = index;
                });
              }
            }
          },
          items: [
            /// Home
            MastraBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text(
                "Home",
                textScaler: TextScaler.noScaling,
              ),
              selectedColor: colorApp,
              unselectedColor: Colors.grey,
            ),

            /// Likes
            MastraBottomBarItem(
              icon: const Icon(Symbols.search),
              title: const Text(
                "Service",
                textScaler: TextScaler.noScaling,
              ),
              selectedColor: colorApp,
              // unselectedColor: colorApp,
              unselectedColor: Colors.grey,
            ),

            /// Search
            MastraBottomBarItem(
              icon: const Icon(
                Icons.bookmark,
              ),
              title: const Text(
                "Social",
                textScaler: TextScaler.noScaling,
              ),
              selectedColor: colorApp,
              // unselectedColor: colorApp,
              unselectedColor: Colors.grey,
            ),

            /// Profile
            MastraBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text(
                "Profile",
                textScaler: TextScaler.noScaling,
              ),
              selectedColor: colorApp,
              // unselectedColor: colorApp,
              unselectedColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
