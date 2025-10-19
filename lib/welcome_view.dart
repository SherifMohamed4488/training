import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training/styles.dart';

import 'forward_button.dart';


class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
          // 🖼 الخلفية (Background Image)
          Image.asset(
            'assets/images/w2_back.jpg',
            // width: 200,
            // height: 200,
            fit: BoxFit.cover,
          ),

          // 🧱 طبقة فوق الخلفية (مثلاً لون شفاف لتغميق الخلفية)
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // 📦 عناصر التصميم (UI) هنا
          SafeArea(
            // عشان تتجنب النوتش والحواف
            child: GestureDetector(
              onTap: (){


              },
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w , vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 84.w,
                          height: 41.h,
                          decoration: ShapeDecoration(
                              color: Colors.white.withValues(alpha: 0),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(20.r))),
                          child: Center(child: Text(" Skip " , style: Styles.style15ArimoRegular.copyWith(fontSize: 16.sp),)),
                        ),
                      ),
                    ),
                    Spacer()  ,
                    Text("Welcome To",style : Styles.style36ArimoBold .copyWith(fontSize: 36.sp,color: Color(0xffFFFFFF))),
                    Text("Fashion", style: Styles.style36ArimoBold.copyWith( color:Color(0xffFFFFFF)  , fontSize: 36.sp) ),
                    SizedBox(height: 18.h),
                    Text(
                        "Discover the latest trends and exclusive styles",
                        style: Styles.style14ArimoRegular.copyWith(height : 1.1 ,color: Color(0xffFFFFFF) , fontSize: 14.sp)),

                    Text(
                      " from our top designers",
                      style: Styles.style14ArimoRegular.copyWith(height: 1 ,fontSize: 14.sp,color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(height: 25.h ,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ForwardButtom( onTap:(){}

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// double getResponsiveFontSize(BuildContext  context, {required double fontSize}){
//
//
//   double sclaeFactor = getScaleFactor(context) ;
//   double responsiveFontSize  = fontSize * sclaeFactor;
//   double lowerLimit = fontSize * 0.8 ;
//   double upperLimit = fontSize * 1.2 ;
//   return responsiveFontSize.clamp(lowerLimit, upperLimit);
//
// }
//
// double getScaleFactor(BuildContext context){
//   double screenWidth = MediaQuery.sizeOf(context).width;
//
//   if (screenWidth < 600){
//
//     return screenWidth / 375 ;
//   } else{return 1;}
//
//
// }
