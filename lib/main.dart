import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/view/auth/auth_mange.dart';
import 'package:chat_app/view/componets/signIn_page.dart';
import 'package:chat_app/view/componets/signUp.dart';
import 'package:chat_app/view/componets/signUp_page.dart';
import 'package:chat_app/view/screen/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signUp',
      getPages: [
        GetPage(name: '/', page : () => AuthMange(),),
        GetPage(name: '/SignIn', page : () => const SigninPage(),transition: Transition.leftToRight),
        GetPage(name: '/signUp', page : () => const SignupPage(),transition: Transition.leftToRight),
        GetPage(name: '/home', page : () => const HomePage(),)
      ],
    );
  }
}
