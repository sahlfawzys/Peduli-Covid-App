import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modules/splashscreen/views/splashscreen_view.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "Peduli COVID",
    //   initialRoute: AppPages.INITIAL,
    //   getPages: AppPages.routes,
    // );

    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 3),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Peduli COVID",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
        return FutureBuilder(
          builder: (context, snapshot) => SplashscreenView(),
        );
      },
    );
  }
}
