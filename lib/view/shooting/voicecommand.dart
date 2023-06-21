import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/button.dart';

class voicecommand extends StatefulWidget {
  const voicecommand({super.key});

  @override
  State<voicecommand> createState() => _voicecommandState();
}

class _voicecommandState extends State<voicecommand>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    const Tab(
      text: 'FREE THROW',
    ),
    const Tab(
      text: 'SPOT SELECTION',
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
          leading: GestureDetector(
              onTap: () {
                context.pop();
              },
              child:
                  const Icon(Icons.arrow_back_ios, color: Color(0xffEE7A1D))),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Voice Command > Free Throw",
            style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 14.sp),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: _selectedIndex == 0
                    ? Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  width: double.infinity,
                                  height: 274.h,
                                  child: Image.asset(
                                    "assets/images/adlut1.png",
                                    fit: BoxFit.contain,
                                  )),
                              100.verticalSpace,
                              Container(
                                width: 393.w,
                                decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                  border: Border.all(
                                      width: 2.w, color: Color(0xff000000)),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
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
                                    ),
                                    15.verticalSpace,
                                    SizedBox(
                                        width: 393.w,
                                        height: 90.h,
                                        child: Image.asset(
                                            "assets/images/rca2.png")),
                                    15.verticalSpace,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                            child: Text(
                                          "85%",
                                          style: TextStyle(
                                              fontSize: 34.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffFFFFFF)),
                                        )),
                                      ],
                                    ),
                                    15.verticalSpace,
                                  ],
                                ),
                              ),
                              20.verticalSpace,
                              GestureDetector(
                                onTap: () {
                                  context.push('/home/shooting/PracticeResult');
                                },
                                child: SizedBox(
                                  width: 360.w,
                                  child: GlobalButton(
                                      text: "Get Result",
                                      color: Color(0xffEE7A1D)),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  width: double.infinity,
                                  height: 274.h,
                                  child: Image.asset(
                                    "assets/images/adlutcoat.png",
                                    fit: BoxFit.contain,
                                  )),
                              100.verticalSpace,
                              Container(
                                width: 393.w,
                                decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                  border: Border.all(
                                      width: 2.w, color: Color(0xff000000)),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
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
                                    ),
                                    20.verticalSpace,
                                    SizedBox(
                                        width: 393.w,
                                        height: 90.h,
                                        child: Image.asset(
                                            "assets/images/rca2.png")),
                                    15.verticalSpace,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                            child: Text(
                                          "85%",
                                          style: TextStyle(
                                              fontSize: 34.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffFFFFFF)),
                                        )),
                                      ],
                                    ),
                                    15.verticalSpace,
                                  ],
                                ),
                              ),
                              20.verticalSpace,
                              GestureDetector(
                                onTap: () {
                                  context.push('/home/shooting/PracticeResult');
                                },
                                child: SizedBox(
                                  width: 360.w,
                                  child: GlobalButton(
                                      text: "Get Result",
                                      color: Color(0xffEE7A1D)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
              ),
            ],
          ),
        ));
  }
}