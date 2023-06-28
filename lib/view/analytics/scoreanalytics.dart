import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/dropdown.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ScoreAnalytics extends StatefulWidget {
  const ScoreAnalytics({super.key});

  @override
  State<ScoreAnalytics> createState() => _ScoreAnalyticsState();
}

class _ScoreAnalyticsState extends State<ScoreAnalytics> {
  int touchedIndex = 1;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

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
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

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
          child: Icon(
            LucideIcons.arrowLeft,
            color: Color(0xffEE7A1D),
          ),
        ),
        title: Text(
          "Score Analytics",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 21.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              25.verticalSpace,
              SizedBox(
                width: 350.w,
                child: Text(
                  "Customized your analytics by selecting below  dropdown list.",
                  style: TextStyle(
                      color: const Color(0xff7C8396), fontSize: 14.sp),
                ),
              ),
              26.verticalSpace,
              SizedBox(
                width: 350.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 202.w,
                      child: MyDropdownWidget(
                        options: const [
                          'Shot Selection',
                          'Total Shots',
                          'Free Throw %',
                          "Around the Rim",
                          "Short",
                          "Mid",
                          "Three",
                          "RIGHT",
                          "Left",
                          "select zont",
                        ],
                        selectedValue: 'Shot Selection',
                        onChanged: (newValue) {
                          // setState(() {
                          //   selectedValue = newValue;
                          // });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 132.w,
                      child: MyDropdownWidget(
                        options: const [
                          'Frequency',
                          'Last Month',
                          'Last Year',
                          "All Time"
                        ],
                        selectedValue: 'Frequency',
                        onChanged: (newValue) {
                          // setState(() {
                          //   selectedValue = newValue;
                          // });
                        },
                      ),
                    ),
                  ],
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
                            padding: const EdgeInsets.only(left: 10),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  touchedIndex = 0;
                                });
                              },
                              child: Text(
                                "Day",
                                style: TextStyle(
                                    color: touchedIndex == 0
                                        ? const Color(0xffEE7A1D)
                                        : const Color(0xff7C8396),
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                touchedIndex = 1;
                              });
                            },
                            child: Text(
                              "Week",
                              style: TextStyle(
                                  color: touchedIndex == 1
                                      ? const Color(0xffEE7A1D)
                                      : const Color(0xff7C8396),
                                  fontSize: 14.sp),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                touchedIndex = 2;
                              });
                            },
                            child: Text(
                              "Month",
                              style: TextStyle(
                                  color: touchedIndex == 2
                                      ? const Color(0xffEE7A1D)
                                      : const Color(0xff7C8396),
                                  fontSize: 14.sp),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                touchedIndex = 3;
                              });
                            },
                            child: Text(
                              "Year",
                              style: TextStyle(
                                  color: touchedIndex == 3
                                      ? const Color(0xffEE7A1D)
                                      : const Color(0xff7C8396),
                                  fontSize: 14.sp),
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      Image.asset("assets/images/week2.png")
                    ],
                  ),
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 350.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 167.w,
                      height: 108.h,
                      child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xffECEDEF), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            color: const Color(0xffFAFAFB),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Percentage",
                                    style: TextStyle(
                                      color: const Color(0xff7C8396),
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  7.verticalSpace,
                                  Text(
                                    "55%",
                                    style: TextStyle(
                                        color: const Color(0xff649E24),
                                        fontSize: 43.sp),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 167.w,
                      height: 108.h,
                      child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xffECEDEF), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            color: const Color(0xffFAFAFB),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "# of Shots",
                                    style: TextStyle(
                                      color: const Color(0xff7C8396),
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  7.verticalSpace,
                                  Text(
                                    "206",
                                    style: TextStyle(
                                        color: const Color(0xffFF549A),
                                        fontSize: 43.sp),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              SizedBox(
                  width: 333.w,
                  child: const GlobalButton(
                    color: Color(0xffEE7A1D),
                    text: 'Share Best Score',
                  ))
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
