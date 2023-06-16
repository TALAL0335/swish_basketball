import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/button.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.push('/home/child/LoginScreen');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          150.verticalSpace,
          Center(
            child: SizedBox(
                width: 226.w,
                height: 221.h,
                child: Image.asset("assets/images/splash.png")),
          ),
          150.verticalSpace,
          SizedBox(
            child:
                GlobalButton(text: "Hoop Smarter!", color: Color(0xffEE7A1D)),
          )
        ],
      ),
    );
  }
}
