import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';

class kidactivityanalytics extends StatefulWidget {
  const kidactivityanalytics({super.key});

  @override
  State<kidactivityanalytics> createState() => _kidactivityanalyticsState();
}

class _kidactivityanalyticsState extends State<kidactivityanalytics>
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
          child: Column(
            children: [
              SizedBox(
                width: 333.w,
                child: _selectedIndex == 0
                    ? Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                19.verticalSpace,
                                SizedBox(
                                  width: 350.w,
                                  child: Text(
                                    "Track your Weekly activity goals",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7C8396)),
                                  ),
                                ),
                                23.verticalSpace,
                                Container(
                                    width: 370,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Color(0xff000000),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child:
                                          Image.asset("assets/images/23.png"),
                                    )
                                    // Padding(
                                    //   padding: const EdgeInsets.all(11),
                                    //   child: Column(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.start,
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.start,
                                    //     children: [
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "Workout Time",
                                    //           style: TextStyle(
                                    //               fontSize: 14.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xff7C8396)),
                                    //         ),
                                    //       ),
                                    //       5.verticalSpace,
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "1:48:27 ",
                                    //           style: TextStyle(
                                    //               fontSize: 34.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xff5484FF)),
                                    //         ),
                                    //       ),
                                    //       Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.end,
                                    //         crossAxisAlignment:
                                    //             CrossAxisAlignment.end,
                                    //         children: [
                                    //           SizedBox(
                                    //             width: 177.w,
                                    //             child: Image.asset(
                                    //                 "assets/images/2.png",
                                    //                 width: 150.w,
                                    //                 height: 150.h,
                                    //                 fit: BoxFit.contain),
                                    //           )
                                    //         ],
                                    //       ),
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "Free Throw ",
                                    //           style: TextStyle(
                                    //               fontSize: 14.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xff7C8396)),
                                    //         ),
                                    //       ),
                                    //       5.verticalSpace,
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "64% ",
                                    //           style: TextStyle(
                                    //               fontSize: 34.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xffEE7A1D)),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    ),
                                48.verticalSpace,
                                SizedBox(
                                  width: 350.w,
                                  child: Text(
                                    "TIME LAPSE",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff273251)),
                                  ),
                                ),
                                22.verticalSpace,
                                Column(
                                  children: [
                                    Container(
                                      width: 351.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2.w,
                                            color: Color(0xffECEDEF)),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 333.w,
                                            decoration: BoxDecoration(
                                              color: const Color(0xffECEDEF),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
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
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              indicatorColor: Colors.blueGrey,
                                              unselectedLabelColor:
                                                  const Color(0xffEE7A1D),
                                              labelColor: Colors.white,
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Column(
                                            children: [
                                              Container(
                                                width: 331,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff57891F),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ListTile(
                                                  title: Text(
                                                    'PRACTICE',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    '01:58:44 HRS',
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ListTile(
                                                  title: Text(
                                                    'LIVE MATCH',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    '00:32:04 HRS',
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                19.verticalSpace,
                                SizedBox(
                                  width: 350.w,
                                  child: Text(
                                    "Track your Weekly activity goals",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff7C8396)),
                                  ),
                                ),
                                23.verticalSpace,
                                Container(
                                    width: 370.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Color(0xff000000),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child:
                                          Image.asset("assets/images/22.png"),
                                    )
                                    //  Padding(
                                    //   padding: const EdgeInsets.all(11),
                                    //   child: Column(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.start,
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.start,
                                    //     children: [
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "Workout Time",
                                    //           style: TextStyle(
                                    //               fontSize: 14.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xff7C8396)),
                                    //         ),
                                    //       ),
                                    //       5.verticalSpace,
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "2:39:19  ",
                                    //           style: TextStyle(
                                    //               fontSize: 34.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xff5484FF)),
                                    //         ),
                                    //       ),
                                    //       Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.end,
                                    //         crossAxisAlignment:
                                    //             CrossAxisAlignment.end,
                                    //         children: [
                                    //           SizedBox(
                                    //             width: 177.w,
                                    //             child: Image.asset(
                                    //               "assets/images/2.png",
                                    //               width: 150.w,
                                    //               height: 150.h,
                                    //               fit: BoxFit.contain,
                                    //             ),
                                    //           )
                                    //         ],
                                    //       ),
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "Free Throw ",
                                    //           style: TextStyle(
                                    //               fontSize: 14.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xff7C8396)),
                                    //         ),
                                    //       ),
                                    //       5.verticalSpace,
                                    //       SizedBox(
                                    //         width: 351.w,
                                    //         child: Text(
                                    //           "61% ",
                                    //           style: TextStyle(
                                    //               fontSize: 34.sp,
                                    //               fontWeight: FontWeight.w400,
                                    //               color: Color(0xffEE7A1D)),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    ),
                                48.verticalSpace,
                                SizedBox(
                                  width: 350.w,
                                  child: Text(
                                    "TIME LAPSE",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff273251)),
                                  ),
                                ),
                                22.verticalSpace,
                                Column(
                                  children: [
                                    Container(
                                      width: 370.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2.w,
                                            color: Color(0xffECEDEF)),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 333.w,
                                            decoration: BoxDecoration(
                                              color: const Color(0xffECEDEF),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
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
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              indicatorColor: Colors.blueGrey,
                                              unselectedLabelColor:
                                                  const Color(0xffEE7A1D),
                                              labelColor: Colors.white,
                                            ),
                                          ),
                                          5.verticalSpace,
                                          Column(
                                            children: [
                                              Container(
                                                width: 331,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff57891F),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ListTile(
                                                  title: Text(
                                                    'PRACTICE',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    '01:58:44 HRS',
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: ListTile(
                                                  title: Text(
                                                    'LIVE MATCH',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.sp,
                                                    ),
                                                  ),
                                                  subtitle: Text(
                                                    '00:32:04 HRS',
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ));
  }
}
