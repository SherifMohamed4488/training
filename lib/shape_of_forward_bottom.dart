import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ShapeOfForwardBottom extends StatelessWidget {
  const ShapeOfForwardBottom({super.key});

  @override
  Widget build(BuildContext context) {
   // double screenWidth = MediaQuery.sizeOf(context).width ;
   // double screenHeight = MediaQuery.sizeOf(context).height ;
   //
   // double minScaleWidth = 52;
   // double maxScaleWidth = 58;
   //
   // double minScaleHeight = 52;
   // double maxScaleHeight = 58;
   // double scaleWidth = 55/360 * screenWidth;
   // double scaleHeight  = 55/360 * screenWidth;
   //
   // if(scaleWidth > 58 ){
   //   scaleWidth = maxScaleWidth;
   // } else if(scaleWidth < 52 ){
   //   scaleWidth = minScaleWidth;
   // }
   //
   // if(scaleHeight > 58){
   //   scaleHeight = maxScaleHeight;
   // } else if(scaleHeight< 52 ){
   //   scaleHeight = minScaleHeight;
   // }
   return Container(
      width:20.w ,
      height: 20.h,
      child: Center(child: Icon(Icons.arrow_forward_ios , size: 10.sp, color: Color(0xffFFFFFF),)),
      decoration: ShapeDecoration(
        color:Colors.orange ,
        shape: OvalBorder(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:training/styles.dart';
//
// import 'forward_button.dart';
//
//
// class WelcomeView extends StatelessWidget {
//   const WelcomeView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Stack(
//         fit: StackFit.expand,
//         children: [
//           // 🖼 الخلفية (Background Image)
//           Image.asset(
//             'assets/images/w2_back.jpg',
//             // width: 200,
//             // height: 200,
//             fit: BoxFit.cover,
//           ),
//
//           // 🧱 طبقة فوق الخلفية (مثلاً لون شفاف لتغميق الخلفية)
//           Container(
//             color: Colors.black.withOpacity(0.3),
//           ),
//
//           // 📦 عناصر التصميم (UI) هنا
//           SafeArea(
//             // عشان تتجنب النوتش والحواف
//             child: GestureDetector(
//               onTap: (){
//
//
//               },
//               child: Padding(
//                 padding:  EdgeInsets.symmetric(horizontal: 16/360 * MediaQuery.sizeOf(context).width ,
//                     vertical:   5/360 * MediaQuery.sizeOf(context).height
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding:  EdgeInsets.only(left: 260/360 * MediaQuery.sizeOf(context).width),
//                       child: Container(
//                         width: 84,
//                         height: 41,
//                         decoration: ShapeDecoration(
//                             color: Colors.white.withValues(alpha: 0),
//                             shape: RoundedRectangleBorder(
//                                 side: BorderSide(width: 1),
//                                 borderRadius: BorderRadius.circular(20))),
//                         child: Center(child: Text(" Skip " , style: Styles.style15ArimoRegular.copyWith(fontSize: getResponsiveFontSize( context, fontSize:15 )),)),
//                       ),
//                     ),
//                     Spacer()  ,
//                     Text("Welcome To", style: Styles.style36ArimoBold .copyWith(height : 0 ,fontSize: getResponsiveFontSize( context, fontSize: 36),color: Color(0xffFFFFFF))),
//                     Text("Fashion", style: Styles.style36ArimoBold.copyWith(height : 0 ,color:Color(0xffFFFFFF)  , fontSize: getResponsiveFontSize( context, fontSize: 36)) ),
//                     SizedBox(height: 18),
//                     Text(
//                         "Discover the latest trends and exclusive styles",
//                         style: Styles.style14ArimoRegular.copyWith(height : 1.1 ,color: Color(0xffFFFFFF) , fontSize: getResponsiveFontSize( context, fontSize: 14))),
//
//                     Text(
//                       " from our top designers",
//                       style: Styles.style14ArimoRegular.copyWith(height: 1 ,fontSize: getResponsiveFontSize( context, fontSize: 14),color: Color(0xffFFFFFF)),
//                     ),
//                     SizedBox(height: 25/800 * MediaQuery.sizeOf(context).height ,),
//                     Padding(
//                         padding:  EdgeInsets.only(left: 275/360 * MediaQuery.sizeOf(context).width),
//                         child:ForwardButtom( onTap:(){}
//
//                         )
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
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
//   } else{return 0;}
//
//
// }
