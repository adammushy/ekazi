// ignore_for_file: use_build_context_synchronously, unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // late AuthService authService;

  final _storage = const FlutterSecureStorage();
  @override
  void initState() {
    super.initState();
    // authService = Provider.of<AuthService>(context, listen: false);
    // checkLoginState(context);
  }

  Future<void> init() async {
    // setStatusBarColor(WAPrimaryColor,
    //     statusBarIconBrightness: Brightness.light);
    await Future.delayed(Duration(seconds: 3));
    if (mounted) finish(context);
    // WADashboardScreen().launch(context);
  }

  @override
  void dispose() {
    // setStatusBarColor(Colors.white, statusBarIconBrightness: Brightness.dark);
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/logo2.png",
              height: 250,
              width:screenWidth *0.8 ,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
