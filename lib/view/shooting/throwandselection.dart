import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

class ThrowAndSpotSelectionScreen extends StatefulWidget {
  const ThrowAndSpotSelectionScreen({super.key});

  @override
  State<ThrowAndSpotSelectionScreen> createState() =>
      _ThrowAndSpotSelectionScreenState();
}

class _ThrowAndSpotSelectionScreenState
    extends State<ThrowAndSpotSelectionScreen> with TickerProviderStateMixin {
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
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffEE7A1D))),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Bulk Entry > Free Throw",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 14.sp),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/playground1.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 425.h,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      color: Colors.black,
                      child: Column(
                        children: [
                          19.verticalSpace,
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
                          21.verticalSpace,
                          Container(
                            color: const Color(0xffEE7A1D),
                            height: 2,
                            width: double.infinity,
                          ),
                          21.verticalSpace,
                          SizedBox(
                            width: 370.w,
                            child: Text(
                              "Type your Score here",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                          19.verticalSpace,
                          SizedBox(
                            width: 370.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 120,
                                  child: AuthTextField(
                                    hinttext: 'Buckets',
                                    headertext: '',
                                    obsecure: false,
                                    showsuffixicon: false,
                                    suffixicon: SizedBox(),
                                  ),
                                ),
                                SizedBox(
                                  width: 120.w,
                                  child: MyDropdownWidget(
                                    options: const [
                                      'Attempt',
                                    ],
                                    selectedValue: 'Attempt',
                                    onChanged: (newValue) {
                                      // setState(() {
                                      //   selectedValue = newValue;
                                      // });
                                    },
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.push(
                                        '/home/child/shooting/throwandspot');
                                  },
                                  child: SizedBox(
                                    width: 120.w,
                                    child: const GlobalButton(
                                      text: 'Start',
                                      color: Color(0xffEE7A1D),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          19.verticalSpace,
                          Container(
                            color: const Color(0xffEE7A1D),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 210.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Shot\n#",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.sp),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r)),
                                        ),
                                        child: Text(
                                          '01',
                                          style: GoogleFonts.jetBrainsMono(
                                              color: Colors.white,
                                              fontSize: 34.sp),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r)),
                                        ),
                                        child: Text(
                                          '05',
                                          style: GoogleFonts.jetBrainsMono(
                                              color: Colors.white,
                                              fontSize: 34.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, bottom: 5),
                                  child: Container(
                                    width: 183.w,
                                    color: Colors.black,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Score\n%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.sp),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(3.0),
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.r)),
                                          ),
                                          child: Text(
                                            '20%',
                                            style: GoogleFonts.jetBrainsMono(
                                                color: Colors.white,
                                                fontSize: 34.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    19.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        context.push('/home/child/shooting/matchresult');
                      },
                      child: SizedBox(
                        width: 333.w,
                        child: const GlobalButton(
                          text: 'Get Result',
                          color: Color(0xffEE7A1D),
                        ),
                      ),
                    )
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
