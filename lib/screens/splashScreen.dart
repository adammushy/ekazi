// ignore_for_file: use_build_context_synchronously, unnecessary_null_comparison, prefer_const_constructors

import 'package:ekazi/screens/authentication/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Navigate to the login page after the animation is complete
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigator.pushReplacementNamed(context, '/login');

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdde4e4),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            'assets/logo/logo2.png', // Replace with your logo path
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}






























































// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:nb_utils/nb_utils.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   // late AuthService authService;

//   final _storage = const FlutterSecureStorage();
//   @override
//   void initState() {
//     super.initState();
//     // authService = Provider.of<AuthService>(context, listen: false);
//     // checkLoginState(context);
//   }

//   Future<void> init() async {
//     // setStatusBarColor(WAPrimaryColor,
//     //     statusBarIconBrightness: Brightness.light);
//     await Future.delayed(Duration(seconds: 3));
//     if (mounted) finish(context);
//     // WADashboardScreen().launch(context);
//   }

//   @override
//   void dispose() {
//     // setStatusBarColor(Colors.white, statusBarIconBrightness: Brightness.dark);
//     super.dispose();
//   }

//   @override
//   void setState(fn) {
//     if (mounted) super.setState(fn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               "assets/logo/logo2.png",
//               height: 250,
//               width:screenWidth *0.8 ,
//               fit: BoxFit.contain,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
