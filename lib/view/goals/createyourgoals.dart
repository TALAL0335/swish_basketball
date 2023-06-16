import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/view/home/childhomescreen.dart';
import 'package:swish_basketball/widgets/button.dart';

class CreateYourGoals extends StatefulWidget {
  const CreateYourGoals({super.key});

  @override
  State<CreateYourGoals> createState() => _CreateYourGoalsState();
}

class _CreateYourGoalsState extends State<CreateYourGoals> {
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
            child: const Icon(Icons.arrow_back_ios, color: Color(0xffEE7A1D))),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: 326.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Create your Goals",
                    style: TextStyle(
                        color: const Color(0xffEE7A1D), fontSize: 18.sp),
                  ),
                  Image.asset(
                    'assets/images/goal.png',
                    width: 70.w,
                    height: 63.h,
                  )
                ],
              ),
            ),
            22.verticalSpace,
            SizedBox(
              width: 326.w,
              child: Column(
                children: [
                  Text(
                    "ACTIVITY EACH WEEK",
                    style: TextStyle(
                        color: const Color(0xff5F677E), fontSize: 14.sp),
                  ),
                  4.verticalSpace,
                  GreyBG(
                    child: Padding(
                      padding: EdgeInsets.all(17.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_circle,
                            size: 40.w,
                          ),
                          Column(
                            children: [
                              Text(
                                "30",
                                style: TextStyle(
                                    color: const Color(0xff5484FF),
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "MINUTES",
                                style: TextStyle(
                                    color: const Color(0xff5F677E),
                                    fontSize: 11.sp),
                              )
                            ],
                          ),
                          Icon(
                            Icons.add_circle,
                            size: 40.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            22.verticalSpace,
            SizedBox(
              width: 326.w,
              child: Column(
                children: [
                  Text(
                    "SHOT EACH WEEK",
                    style: TextStyle(
                        color: const Color(0xff5F677E), fontSize: 14.sp),
                  ),
                  4.verticalSpace,
                  GreyBG(
                    child: Padding(
                      padding: EdgeInsets.all(17.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_circle,
                            size: 40.w,
                          ),
                          Column(
                            children: [
                              Text(
                                "2000",
                                style: TextStyle(
                                    color: const Color(0xff649E24),
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "SHOTS",
                                style: TextStyle(
                                    color: const Color(0xff5F677E),
                                    fontSize: 11.sp),
                              )
                            ],
                          ),
                          Icon(
                            Icons.add_circle,
                            size: 40.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            22.verticalSpace,
            SizedBox(
              width: 326.w,
              child: Column(
                children: [
                  Text(
                    "FREE THROW EACH WEEK",
                    style: TextStyle(
                        color: const Color(0xff5F677E), fontSize: 14.sp),
                  ),
                  4.verticalSpace,
                  GreyBG(
                    child: Padding(
                      padding: EdgeInsets.all(17.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove_circle,
                            size: 40.w,
                          ),
                          Column(
                            children: [
                              Text(
                                "78%",
                                style: TextStyle(
                                    color: const Color(0xffFF8831),
                                    fontSize: 34.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "SHOTS",
                                style: TextStyle(
                                    color: const Color(0xff5F677E),
                                    fontSize: 11.sp),
                              )
                            ],
                          ),
                          Icon(
                            Icons.add_circle,
                            size: 40.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            26.verticalSpace,
            GestureDetector(
              onTap: () {
                context.push('/home/child/congratulationscreen');
              },
              child: SizedBox(
                  width: 326.w,
                  child: const GlobalButton(
                    color: Color(0xffEE7A1D),
                    text: 'Create your Goal',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
