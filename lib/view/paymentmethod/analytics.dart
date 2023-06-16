import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';

class mikeottrando extends StatelessWidget {
  const mikeottrando({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            LucideIcons.arrowLeft,
            color: Color(0xffEE7A1D),
          ),
        ),
        title: Text(
          "Analytics",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xffEE7A1D)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
                onTap: () {
                  context.push('/home/child/NoitifcationScreen');
                },
                child: Icon(LucideIcons.bellRing, color: Color(0xffEE7A1D))),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            21.verticalSpace,
            SizedBox(
              width: 353.w,
              height: 60.h,
              child: GreyBG(
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/childph.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  title: Text(
                    "Mike Ottrando",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffEE7A1D)),
                  ),
                  trailing: Icon(
                    LucideIcons.chevronDown,
                    color: Color(0xffEE7A1D),
                  ),
                ),
              ),
            ),
            15.verticalSpace,
            Container(
              // height: 293.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: const Color(0xffECEDEF),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Day",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                        ),
                        Text(
                          "Week",
                          style: TextStyle(
                              color: const Color(0xffEE7A1D),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Month",
                          style: TextStyle(
                              color: const Color(0xff7C8396), fontSize: 14.sp),
                        ),
                        10.verticalSpace,
                        Image.asset("assets/images/button1.png"),
                      ],
                    ),
                    10.verticalSpace,
                    Divider(
                      thickness: 1,
                      color: Color(0xffB4B8C3),
                    ),
                    20.verticalSpace,
                    Image.asset("assets/images/week2.png"),
                  ],
                ),
              ),
            ),
            25.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/daveottrando');
              },
              child: SizedBox(
                width: 353.w,
                height: 60.h,
                child: GreyBG(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/dave.png",
                      width: 40.w,
                      height: 40.h,
                    ),
                    title: Text(
                      "Dave Ottrando           (Kid account)    ",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffEE7A1D)),
                    ),
                    trailing: Icon(
                      LucideIcons.chevronDown,
                      color: Color(0xffEE7A1D),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
