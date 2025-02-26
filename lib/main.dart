import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/login_screens.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone/responsive/webscreen_layout.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/dimensions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // we need to fixed run this line for if() its in the mobile stage and still if its in the web stage
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAYGEuwtdnOlnc9_riKd43r16s64U32M3I",
        appId: "1:1054845278635:web:9d960383f6219f5e251aee",
        messagingSenderId: "1054845278635",
        projectId: "instagram-clone-5926e",
        storageBucket: "instagram-clone-5926e.firebasestorage.app",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instgram clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: ResponsiveLayoutScreen(
      //   webScreenLayout: WebscreenLayout(),
      //   mobileScreenLayout: MobileScreenLayout(),
      // ),
      home: LoginScreens(),
    );
  }
}
