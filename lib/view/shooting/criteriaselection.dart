import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swish_basketball/widgets/button.dart';
import 'package:swish_basketball/widgets/dropdown.dart';

class CriteriaSelectionScreen extends StatelessWidget {
  const CriteriaSelectionScreen({super.key});

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
          "SWISH - Smart Hoops, Smart Result",
          style: TextStyle(color: const Color(0xffEE7A1D), fontSize: 14.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 300.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: 287.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Color(0xffFFBDB5)),
                    ),
                    FractionalTranslation(
                        translation: const Offset(0.0, 0.05),
                        child: Image.asset(
                          'assets/images/player.png',
                          width: 402.w,
                          height: 284.h,
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                  width: 333.w,
                  child: Text(
                    'Game Type',
                    style: TextStyle(
                        color: const Color(0xff5F677E),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                width: 333.w,
                child: MyDropdownWidget(
                  options: const [
                    'Select type game or practice ',
                    'Last Month',
                    'Last Year'
                  ],
                  selectedValue: 'Select type game or practice ',
                  onChanged: (newValue) {
                    // setState(() {
                    //   selectedValue = newValue;
                    // });
                  },
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              SizedBox(
                  width: 333.w,
                  child: Text(
                    'Method',
                    style: TextStyle(
                        color: const Color(0xff5F677E),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                width: 333.w,
                child: MyDropdownWidget(
                  options: const ['Select Method', 'Last Month', 'Last Year'],
                  selectedValue: 'Select Method',
                  onChanged: (newValue) {
                    // setState(() {
                    //   selectedValue = newValue;
                    // });
                  },
                ),
              ),
              SizedBox(
                height: 39.h,
              ),
              GestureDetector(
                onTap: () {
                  context.push('/home/child/shooting/throwandspot');
                },
                child: SizedBox(
                  width: 333.w,
                  child: const GlobalButton(
                    text: 'Start',
                    color: Color(0xffEE7A1D),
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
