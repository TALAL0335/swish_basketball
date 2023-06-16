import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:swish_basketball/widgets/authtextfield.dart';
import 'package:swish_basketball/widgets/button.dart';

class paymentmethod extends StatefulWidget {
  const paymentmethod({super.key});

  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
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
          "Payment",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xffEE7A1D)),
        ),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                width: 350.w,
                child: Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5F677E)),
                ),
              ),
              10.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset("assets/images/card.png"),
                      Image.asset("assets/images/card2.png"),
                      Image.asset("assets/images/card4.png"),
                      Image.asset("assets/images/card5.png"),
                      Image.asset("assets/images/card6.png"),
                      Image.asset("assets/images/card7.png"),
                      Image.asset("assets/images/card8.png"),
                      Image.asset("assets/images/card9.png"),

                      // Add more images here
                    ],
                  ),
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 333.w,
                child: Column(
                  children: [
                    const AuthTextField(
                      hinttext: 'Enter Card hold name',
                      headertext: 'Card Holder Name',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: 'Enter your 16 Digits Card number',
                      headertext: 'Card Number',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    const AuthTextField(
                      hinttext: 'Type Full Name',
                      headertext: 'Mobile Number',
                      obsecure: false,
                      showsuffixicon: false,
                      suffixicon: SizedBox(),
                    ),
                    25.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 229.w,
                          child: const AuthTextField(
                            hinttext: '16/06/2025',
                            headertext: 'Expiry Date',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                        ),
                        SizedBox(
                          width: 76.w,
                          child: const AuthTextField(
                            hinttext: '245',
                            headertext: 'CVV',
                            obsecure: false,
                            showsuffixicon: false,
                            suffixicon: SizedBox(),
                          ),
                        ),
                      ],
                    ),
                    50.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        context.push('/home/child/HomeScreen');
                      },
                      child: SizedBox(
                        width: 348.w,
                        child: GlobalButton(
                            text: "Pay Now", color: Color(0xffEE7A1D)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
