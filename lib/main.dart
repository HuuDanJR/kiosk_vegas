import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiosk_new/getx/mycontroller.dart';
import 'package:kiosk_new/pages/home.dart';
import 'package:kiosk_new/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    // Register the MyGetXController
    Get.put(MyGetXController(),permanent: false);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KIOSK NEW',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        // home:  HomePage(),
        home: const WelcomePage(),
        // initialRoute: '/welcome',
        routes: <String, WidgetBuilder>{
          // '/welcome': (BuildContext context) => const WelcomePage(),
          // '/home': (BuildContext context) => HomePage(),
        
        });
  }
}
