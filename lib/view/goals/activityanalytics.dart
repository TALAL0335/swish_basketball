import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';

class activityanalytic extends StatefulWidget {
  const activityanalytic({super.key});

  @override
  State<activityanalytic> createState() => _activityanalyticState();
}

class _activityanalyticState extends State<activityanalytic>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    const Tab(
      text: 'CURRENT WEEK',
    ),
    const Tab(
      text: 'PREVIOUS WEEK',
    ),
  ];
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);

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
          "Activity Analytics",
          style: TextStyle(
              color: Color(0xffEE7A1D),
              fontWeight: FontWeight.w400,
              fontSize: 18.sp),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            width: 333.w,
            child: _selectedIndex == 0
                ? Column(
                    children: [
                      Column(
                        children: [
                          20.verticalSpace,
                          Text(
                            "Track your Weekly activity goals",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                                color: Color(0xffEE7A1D)),
                          ),
                          30.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 131.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.r),
                                    topLeft: Radius.circular(15.r)),
                                color: Color(0xff649E24)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "SHOTS ATTEMPTED",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  4.verticalSpace,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '84 ',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '/200',
                                          style: TextStyle(
                                              color: Color(0xffDFE1E6),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          3.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 131.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Color(0xff5484FF)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "WORKOUT TIME",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  4.verticalSpace,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '00:40',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '/01:30',
                                          style: TextStyle(
                                              color: Color(0xffDFE1E6),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          3.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 131.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.r),
                                    bottomRight: Radius.circular(15.r)),
                                color: Color(0xffEE7A1D)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "FREE THROW",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  4.verticalSpace,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '48% ',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '/ 78%',
                                          style: TextStyle(
                                              color: Color(0xffDFE1E6),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          10.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 335.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: SizedBox(
                              width: 260.w,
                              height: 260.h,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  "assets/images/activity2.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          19.verticalSpace,
                          SizedBox(
                            width: 319.w,
                            height: 50.h,
                            child: GlobalButton(
                                text: "Change Weekly Goal",
                                color: Color(0xffEE7A1D)),
                          ),
                          71.verticalSpace,
                          SizedBox(
                            width: 300.w,
                            child: Text(
                              "TIME LAPSE",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff273251)),
                            ),
                          ),
                          20.verticalSpace,
                          Container(
                            width: 333.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffECEDEF),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TabBar(
                              controller: _controller,
                              tabs: _tabs,
                              onTap: (index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              indicator: BoxDecoration(
                                color: const Color(0xffEE7A1D),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              indicatorColor: Colors.blueGrey,
                              unselectedLabelColor: const Color(0xffEE7A1D),
                              labelColor: Colors.white,
                            ),
                          ),
                          Container(
                            width: 351.w,
                            height: 220.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xffECEDEF)),
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              children: [
                                Container(
                                  width: 331,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xff57891F),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      'PRACTICE',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '01:58:44 HRS',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: Icon(
                                      LucideIcons.chevronRight,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                5.verticalSpace,
                                Container(
                                  width: 331,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xff000000),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      'LIVE MATCH',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '00:32:04 HRS',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: Icon(
                                      LucideIcons.chevronRight,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          45.verticalSpace,
                          SizedBox(
                            width: 340.w,
                            child: Text(
                              "iOS & Apple Watch",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff273251)),
                            ),
                          ),
                          22.verticalSpace,
                          Container(
                            width: 351.w,
                            height: 138.h,
                            decoration: BoxDecoration(
                                color: Color(0xffFAFAFB),
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                    width: 2, color: Color(0xffECEDEF))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                15.verticalSpace,
                                SizedBox(
                                  width: 330.w,
                                  height: 27.h,
                                  child: Text(
                                    "Activity",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp,
                                        color: Color(0xff5F677E)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    10.horizontalSpace,
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Move",
                                            style: TextStyle(
                                                color: Color(0xffEE7A1D),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          3.verticalSpace,
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '375',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: 'cal',
                                                  style: TextStyle(
                                                      color: Color(0xffB4B8C3),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    86.horizontalSpace,
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Excercise",
                                            style: TextStyle(
                                                color: Color(0xff649E24),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          5.verticalSpace,
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '19 ',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: 'min',
                                                  style: TextStyle(
                                                      color: Color(0xffB4B8C3),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    66.horizontalSpace,
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Stand",
                                              style: TextStyle(
                                                  color: Color(0xff5484FF),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            5.verticalSpace,
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '3',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: 'hr',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          15.verticalSpace,
                          Container(
                            width: 351.w,
                            height: 138.h,
                            decoration: BoxDecoration(
                                color: Color(0xffFAFAFB),
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                    width: 2, color: Color(0xffECEDEF))),
                            child: Column(
                              children: [
                                15.verticalSpace,
                                SizedBox(
                                  width: 330.w,
                                  height: 27.h,
                                  child: Text(
                                    "Health",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp,
                                        color: Color(0xff5F677E)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Heart Rate",
                                              style: TextStyle(
                                                  color: Color(0xffEE7A1D),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            3.verticalSpace,
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '62 ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: 'BPM',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    63.horizontalSpace,
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sleep",
                                              style: TextStyle(
                                                  color: Color(0xff649E24),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            5.verticalSpace,
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '7',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: 'min',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: '30',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' min',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          50.verticalSpace,
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Column(
                        children: [
                          20.verticalSpace,
                          Text(
                            "Track your Weekly activity goals",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                                color: Color(0xffEE7A1D)),
                          ),
                          30.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 131.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.r),
                                    topLeft: Radius.circular(15.r)),
                                color: Color(0xff649E24)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "SHOTS ATTEMPTED",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  4.verticalSpace,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '61 ',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '/120',
                                          style: TextStyle(
                                              color: Color(0xffDFE1E6),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          3.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 131.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Color(0xff5484FF)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "WORKOUT TIME",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  4.verticalSpace,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '00:20',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '/01:00',
                                          style: TextStyle(
                                              color: Color(0xffDFE1E6),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          3.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 131.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.r),
                                    bottomRight: Radius.circular(15.r)),
                                color: Color(0xffEE7A1D)),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "FREE THROW",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  4.verticalSpace,
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '18% ',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        TextSpan(
                                          text: '/ 50%',
                                          style: TextStyle(
                                              color: Color(0xffDFE1E6),
                                              fontSize: 43.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          10.verticalSpace,
                          Container(
                            width: 349.w,
                            height: 335.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: SizedBox(
                              width: 273.w,
                              height: 223.h,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  "assets/images/activity2.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          19.verticalSpace,
                          SizedBox(
                            width: 319.w,
                            height: 50.h,
                            child: GlobalButton(
                                text: "Change Weekly Goal",
                                color: Color(0xffEE7A1D)),
                          ),
                          71.verticalSpace,
                          SizedBox(
                            width: 300.w,
                            child: Text(
                              "TIME LAPSE",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff273251)),
                            ),
                          ),
                          20.verticalSpace,
                          Container(
                            width: 333.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffECEDEF),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: TabBar(
                              controller: _controller,
                              tabs: _tabs,
                              onTap: (index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              indicator: BoxDecoration(
                                color: const Color(0xffEE7A1D),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              indicatorColor: Colors.blueGrey,
                              unselectedLabelColor: const Color(0xffEE7A1D),
                              labelColor: Colors.white,
                            ),
                          ),
                          Container(
                            width: 351.w,
                            height: 220.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xffECEDEF)),
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              children: [
                                Container(
                                  width: 331,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xff57891F),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      'PRACTICE',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '01:58:44 HRS',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: Icon(
                                      LucideIcons.chevronRight,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                5.verticalSpace,
                                Container(
                                  width: 331,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xff000000),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: ListTile(
                                    title: Text(
                                      'LIVE MATCH',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '00:32:04 HRS',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: Icon(
                                      LucideIcons.chevronRight,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          45.verticalSpace,
                          SizedBox(
                            width: 340.w,
                            child: Text(
                              "iOS & Apple Watch",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff273251)),
                            ),
                          ),
                          22.verticalSpace,
                          Container(
                            width: 351.w,
                            height: 138.h,
                            decoration: BoxDecoration(
                                color: Color(0xffFAFAFB),
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                    width: 2, color: Color(0xffECEDEF))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                15.verticalSpace,
                                SizedBox(
                                  width: 330.w,
                                  height: 27.h,
                                  child: Text(
                                    "Activity",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp,
                                        color: Color(0xff5F677E)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    10.horizontalSpace,
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Move",
                                            style: TextStyle(
                                                color: Color(0xffEE7A1D),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          3.verticalSpace,
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '375',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: 'cal',
                                                  style: TextStyle(
                                                      color: Color(0xffB4B8C3),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    86.horizontalSpace,
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Excercise",
                                            style: TextStyle(
                                                color: Color(0xff649E24),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          5.verticalSpace,
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '19 ',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: ' ',
                                                  style: TextStyle(
                                                      color: Color(0xff040A1C),
                                                      fontSize: 27.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                TextSpan(
                                                  text: 'min',
                                                  style: TextStyle(
                                                      color: Color(0xffB4B8C3),
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    66.horizontalSpace,
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Stand",
                                              style: TextStyle(
                                                  color: Color(0xff5484FF),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            5.verticalSpace,
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '3',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: 'hr',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          15.verticalSpace,
                          Container(
                            width: 351.w,
                            height: 138.h,
                            decoration: BoxDecoration(
                                color: Color(0xffFAFAFB),
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                    width: 2, color: Color(0xffECEDEF))),
                            child: Column(
                              children: [
                                15.verticalSpace,
                                SizedBox(
                                  width: 330.w,
                                  height: 27.h,
                                  child: Text(
                                    "Health",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.sp,
                                        color: Color(0xff5F677E)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Heart Rate",
                                              style: TextStyle(
                                                  color: Color(0xffEE7A1D),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            3.verticalSpace,
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '62 ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: 'BPM',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    63.horizontalSpace,
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sleep",
                                              style: TextStyle(
                                                  color: Color(0xff649E24),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            5.verticalSpace,
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '7',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: 'min',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: '30',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff040A1C),
                                                        fontSize: 27.sp,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                  TextSpan(
                                                    text: ' min',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB4B8C3),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          50.verticalSpace,
                        ],
                      ),
                    ],
                  ),
          ),
          //  _selectedIndex == 0 ? 50.verticalSpace : 5.verticalSpace,
        ),
      ),
    );
  }
}
