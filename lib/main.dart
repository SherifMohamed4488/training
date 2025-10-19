import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:training/welcome_view.dart';



void main() async {

  runApp(DevicePreview(

      enabled: true,
     builder: (context) => ScreenUtilInit(
       designSize: Size(360, 800), // ← base design size
       minTextAdapt: true,
       splitScreenMode: true,
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         useInheritedMediaQuery: true,
         home: WelcomeView(),
         builder: (context, child) {
           // This helps with consistent text scaling
           final mediaQuery = MediaQuery.of(context);
           return MediaQuery(
             data: mediaQuery.copyWith(textScaleFactor: 1.0),
             child: child!,
           );
         },
       ),
     ),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // locale: DevicePreview.locale(context),
      //   builder:DevicePreview.appBuilder,
      //      builder:  (context, child) {
      //     final mq = MediaQuery.of(context);
      //     return MediaQuery(
      //       data: mq.copyWith(textScaleFactor: 1.0),
      //       child: child!,
      //     );
      //   },
        debugShowCheckedModeBanner: false,
        home: WelcomeView(),

    );




  }
}
