import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';

class shortchart extends StatefulWidget {
  const shortchart({super.key});

  @override
  State<shortchart> createState() => _shortchartState();
}

class _shortchartState extends State<shortchart> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/childph.png',
            width: 40.w,
          ),
        ),
        title: Text(
          "Hi Mike!",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.push('/home/child/noitification');
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Icon(LucideIcons.bellRing, color: Color(0xffEE7A1D)),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/shooting');
                },
                child: Container(
                  width: 353.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff8E2B00),
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: Padding(
                    padding: EdgeInsets.all(14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Start Shooting",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          'assets/images/basketball.png',
                          height: 40.h,
                          width: 40.w,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/shotsatempt');
                },
                child: SizedBox(
                  width: 353.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 93.w,
                        height: 86.h,
                        child: GreyBG(
                            child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "431",
                                style: TextStyle(
                                    color: const Color(0xff649E24),
                                    fontSize: 27.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              7.verticalSpace,
                              Text(
                                "Total Shots",
                                style: TextStyle(
                                    color: const Color(0xff273251),
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push('/home/child/workoutscreen');
                        },
                        child: SizedBox(
                          width: 145.w,
                          height: 86.h,
                          child: GreyBG(
                              child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "54.2h",
                                  style: TextStyle(
                                      color: const Color(0xff5484FF),
                                      fontSize: 27.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                7.verticalSpace,
                                Text(
                                  "Total Workout Time",
                                  style: TextStyle(
                                      color: const Color(0xff273251),
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push('/home/child/freethrow');
                        },
                        child: SizedBox(
                          width: 93.w,
                          height: 86.h,
                          child: GreyBG(
                              child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "82%",
                                  style: TextStyle(
                                      color: const Color(0xffEE7A1D),
                                      fontSize: 27.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                7.verticalSpace,
                                Text(
                                  "Free Throw",
                                  style: TextStyle(
                                      color: const Color(0xff273251),
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              25.verticalSpace,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.push('/home/child/dayScoreAnalytics');
                            },
                            child: Text(
                              "Day",
                              style: TextStyle(
                                  color: const Color(0xff7C8396),
                                  fontSize: 14.sp),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.push('/home/child/ScoreAnalytics');
                            },
                            child: Text(
                              "Week",
                              style: TextStyle(
                                  color: const Color(0xffEE7A1D),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.push('/home/child/monthScoreAnalytics');
                            },
                            child: Text(
                              "Month",
                              style: TextStyle(
                                  color: const Color(0xff7C8396),
                                  fontSize: 14.sp),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context.push('/home/child/yearScoreAnalytics');
                            },
                            child: Text(
                              "Year",
                              style: TextStyle(
                                  color: const Color(0xff7C8396),
                                  fontSize: 14.sp),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                context.push('/home/child/ChildHomeScreen');
                              },
                              child: Image.asset("assets/images/button.png"))
                          // CupertinoSwitch(
                          //   thumbColor: Color(0xffFF4A31),

                          //   // This bool value toggles the switch.
                          //   value: switchValue,

                          //   activeColor: Colors.white,
                          //   onChanged: (bool? value) {
                          //     // This is called when the user toggles the switch.
                          //     setState(() {
                          //       switchValue = value ?? false;
                          //     });
                          //   },
                          // ),
                        ],
                      ),
                      10.verticalSpace,
                      Container(
                        width: 298.77.w,
                        height: 219.66.h,
                        child: Image.asset("assets/images/coat.png"),
                        // Replace "YourWidget" with the desired content of the container
                      )
                    ],
                  ),
                ),
              ),
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/activityanalytic');
                },
                child: Container(
                  width: 353.w,
                  height: 148.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF000000), // Black background color
                    border: Border.all(
                      color: Color(0xFFECEDEF),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 113.w,
                            height: 113.h,
                            child: Image.asset("assets/images/activity2.png")),
                        24.horizontalSpace,
                        SizedBox(
                          width: 167.w,
                          height: 27.h,
                          child: Text(
                            "Activity Analytics",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/setmygoals');
                },
                child: Container(
                  width: 355.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffEE7A1D),
                      borderRadius: BorderRadius.all(Radius.circular(12.r))),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(14.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            LucideIcons.locateFixed,
                            color: Colors.white,
                          ),
                          12.horizontalSpace,
                          Text(
                            "Set My Goals",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/downloadscreen');
                },
                child: SizedBox(
                  width: 360.w,
                  height: 65.h,
                  child: GreyBG(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Icon(
                            LucideIcons.bookDown,
                            size: 18.h,
                            color: Color(0xffEE7A1D),
                          ),
                          10.horizontalSpace,
                          Text(
                            "Download Built-in-Guide",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp,
                                color: Color(0xffEE7A1D)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
