import 'package:flutter/material.dart';
import 'package:training/shape_of_forward_bottom.dart';


class ForwardButtom extends StatelessWidget {
   ForwardButtom({required this.onTap});

 VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ShapeOfForwardBottom(),
    );
  }
}


// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';
//
//
// import 'package:training/welcome_view.dart';
//
//
//
// void main() async {
//
//   runApp(DevicePreview(
//       enabled: true,
//       builder : (context ) =>  const MyApp()));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       locale: DevicePreview.locale(context),
//       builder:DevicePreview.appBuilder,
//       //     (context, child) {
//       //   final mq = MediaQuery.of(context);
//       //   return MediaQuery(
//       //     data: mq.copyWith(textScaleFactor: 1.0),
//       //     child: child!,
//       //   );
//       // },
//       debugShowCheckedModeBanner: false,
//       home: WelcomeView(),
//
//     );
//
//
//
//
//   }
// }
