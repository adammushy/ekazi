// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'dart:convert';

import 'package:ekazi/constants/app_colors.dart';
import 'package:ekazi/screens/dashboardscreen.dart';
import 'package:ekazi/widgets/inputDecoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nb_utils/nb_utils.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
// import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String? _deviceToken;
  final _formKey = GlobalKey<FormState>();
  final bool _obscurePassword = true;

  bool isLoading = false;
  final storage = FlutterSecureStorage();

  var user_id;

  var username;

  getUserId() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = localStorage.getString("user");
    setState(() {
      user_id = jsonDecode(user!)['id'];
      username = jsonDecode(user)['username'];
    });
  }

  @override
  void initState() {
    super.initState();
    // _checkAndRetrieveDeviceToken();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Image.asset(
                      "assets/logo/logo1.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: screenHeight * .2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.EMAIL,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textStyle: TextStyle(color: colorApp, fontSize: 16),
                        decoration: waInputDecoration(
                          hint: 'Email Address',
                          hintColor: colorApp,
                          bgColor: colorApp.withOpacity(0.1),
                          borderColor: colorApp,
                        ),
                      ),
                      10.height,
                      AppTextField(
                        textFieldType: TextFieldType.PASSWORD,
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        textStyle: TextStyle(color: colorApp, fontSize: 16),
                        decoration: waInputDecoration(
                          hint: 'password',
                          hintColor: colorApp,
                          bgColor: colorApp.withOpacity(0.1),
                          borderColor: colorApp,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: isLoading
                            ? CircularProgressIndicator(
                                color: colorApp2,
                              )
                            : ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                child: ElevatedButton(
                                  onPressed: () async {
                                    // WADashboardScreen().launch(context);

                                    // _onHorizontalLoading1();
                                    // final authService =
                                    //     Provider.of<AuthService>(context,
                                    //         listen: false);

                                    // FocusScope.of(context).unfocus();
                                    // final loginOK = await authService.login(
                                    //     _phoneController.text,
                                    //     _phoneController.text);

                                    // print("Login response $loginOK");
                                    // if (loginOK == true) {
                                    //   Navigator.pushAndRemoveUntil(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           WADashboardScreen(),
                                    //     ),
                                    //     (route) => false,
                                    //   );
                                    // } else if (loginOK == 'verify_otp') {
                                    //   Navigator.of(context).pop();
                                    //   WAVerificationScreen().launch(context);
                                    // } else {
                                    //   // Navigator.of(context).pop();
                                    //   // passwordController.clear();
                                    //   // showAlert(context, 'Namba Haijasajiliwa',
                                    //   //     'Tafadhali wasiliana na kiongozi wako wa kituo kwa usajili.');
                                    //   Future.delayed(
                                    //       Duration(milliseconds: 1500), () {
                                    //     ShowMToast(context).errorToast(
                                    //       message: "phone number not found",
                                    //       alignment: Alignment.bottomCenter,
                                    //       iconColor: Colors.white,
                                    //       backgroundColor: Colors.red,
                                    //       textColor: Colors.white,
                                    //     );
                                    //   });
                                    // }

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            WADashboardScreen(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: colorApp,
                                    minimumSize:
                                        const Size(double.infinity, 45),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                  ),
                                  child: Text(
                                    'Login',
                                    textScaler: TextScaler.noScaling,
                                    style: boldTextStyle(
                                        size: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
