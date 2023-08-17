import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:home_market/firebase_options.dart';
import 'package:home_market/repository/auth_repository/authentication_repository.dart';
import 'splash/splash_screen.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
//       .then((value) => Get.put(AuthenticationRepository()));
//   runApp(const MyApp());
// }

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      //theme: appTheme,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const MySplashScreen(),
      //   '/favoritePage': (context) => const FavoritePageScreen(),
      // },
      home: MySplashScreen(),
      //home: MailVerification(),
      //home: FavoriteListScreen(),
    );
  }
}
