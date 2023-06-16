import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/mainhome/mainhome.dart';

class downloadscreen extends StatelessWidget {
  const downloadscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(LucideIcons.arrowLeft, color: Color(0xffEE7A1D))),
        title: Text(
          "Downloads",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Color(0xffEE7A1D)),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            18.verticalSpace,
            SizedBox(
              width: 333.w,
              child: Text(
                "Click Built in Guide link to download PDF",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: Color(0xff273251)),
              ),
            ),
            78.verticalSpace,
            Container(
              width: 236,
              height: 346,
              color: Color(0xFF224165),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crazzy",
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                    ),
                    3.verticalSpace,
                    Text(
                      "Playing",
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                    ),
                    3.verticalSpace,
                    Text(
                      "Tips",
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF)),
                    ),
                    102.verticalSpace,
                    Text(
                      "Author:",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                    Text(
                      "Steven surname",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
