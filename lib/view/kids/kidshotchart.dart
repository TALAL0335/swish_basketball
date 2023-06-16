import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

class kidshotchart extends StatefulWidget {
  const kidshotchart({super.key});

  @override
  State<kidshotchart> createState() => _kidshomescreenState();
}

bool switchValue = true;

class _kidshomescreenState extends State<kidshotchart> {
  int touchedIndex = -1;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late List<_ChartData> data;
  // late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Dec', 55),
      _ChartData('Jan', 90),
      _ChartData('Feb', 85),
      _ChartData('Mar', 75),
      _ChartData('Apr', 20),
      _ChartData('May', 12),
      _ChartData('Jun', 15),
      _ChartData('Jul', 30),
      _ChartData('Aug', 6.4),
      _ChartData('Sep', 14),
      _ChartData('Oct', 40),
      _ChartData('Nov', 30)
    ];
    // _tooltip = TooltipBehavior(enable: true);
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEE7A1D),
        leading: Image.asset("assets/images/hidave.png"),
        title: Text(
          "Hi Dave",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Color(0xffFFFFFF)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  context.push('/home/child/noitification');
                },
                child: Icon(LucideIcons.bellRing, color: Color(0xffFFFFFF))),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              19.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/shooting');
                },
                child: Container(
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff8E2B00),
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: Row(
                    children: [
                      Image.asset("assets/images/basketball.png"),
                      30.horizontalSpace,
                      Text(
                        "Start Shooting",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            color: Color(0xffFFFFFF)),
                      ),
                      70.horizontalSpace,
                      Icon(
                        LucideIcons.arrowRightCircle,
                        size: 26.w,
                        color: Color(0xffEE7A1D),
                      )
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
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
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                          Text(
                            "Year",
                            style: TextStyle(
                                color: const Color(0xff7C8396),
                                fontSize: 14.sp),
                          ),
                          GestureDetector(
                              onTap: () {
                                context.push('/home/child/kidshomescreen');
                              },
                              child: Image.asset("assets/images/button1.png"))
                        ],
                      ),
                      10.verticalSpace,
                      Image.asset("assets/images/122.png")
                    ],
                  ),
                ),
              ),
              22.verticalSpace,
              GestureDetector(
                onTap: () {
                  context.push('/home/child/kidactivityanalytics');
                },
                child: SizedBox(
                  width: 350.w,
                  child:
                      //  Image.asset(
                      //   "assets/images/65.png",
                      //   fit: BoxFit.cover,
                      // )
                      GreyBG(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          8.horizontalSpace,
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Free Throw",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff5F677E)),
                            ),
                          ),
                          Image.asset(
                            "assets/images/66.png",
                            width: 112.w,
                            height: 112.h,
                            fit: BoxFit.contain,
                          )
                          // Container(
                          //   width: 112.w,
                          //   height: 112.h,
                          //   decoration: BoxDecoration(
                          //     border:
                          //         Border.all(width: 10, color: Color(0xff8FE133)),
                          //     shape: BoxShape.circle,
                          //   ),
                          //   child: Center(
                          //       child: Text(
                          //     "64%",
                          //     style: TextStyle(
                          //         fontSize: 27.sp,
                          //         fontWeight: FontWeight.w700,
                          //         color: Color(0xff5F677E)),
                          //   )),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              22.verticalSpace,
              SizedBox(
                width: 353.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 167.w,
                      height: 155.h,
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xffB4B8C3), width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFAFAFA),
                                Color(0xFFD2D2D2),
                                Color(0xFFFFFFFF),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/swish3.png",
                                  width: 90,
                                  height: 95,
                                  fit: BoxFit.cover,
                                ),
                                5.verticalSpace,
                                Text(
                                  "SWISH Video Library",
                                  style: TextStyle(
                                      color: const Color(0xff5F677E),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push('/home/child/ScoreAnalytics');
                      },
                      child: SizedBox(
                        width: 167.w,
                        height: 155.h,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xffB4B8C3), width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFAFAFA),
                                  Color(0xFFD2D2D2),
                                  Color(0xFFFFFFFF),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/swish2.png",
                                    width: 90,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                                  5.verticalSpace,
                                  Text(
                                    "Shooting Stats",
                                    style: TextStyle(
                                        color: const Color(0xff5F677E),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
