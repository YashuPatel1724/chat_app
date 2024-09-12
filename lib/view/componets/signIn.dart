// import 'package:chat_app/services/auth_services.dart';
// import 'package:chat_app/services/goggle_services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sign_in_button/sign_in_button.dart';
//
// import '../../controller/auth_controller.dart';
//
//
//
// class Signin extends StatelessWidget {
//   const Signin({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 170,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: TextField(
//                 controller: controller.txtEmail,
//                 decoration: InputDecoration(
//                   label: Text('Email'),
//                   prefixIcon: Icon(Icons.email_outlined),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//               child: TextField(
//                 controller: controller.txtPassword,
//                 decoration: InputDecoration(
//                   label: Text('Password'),
//                   prefixIcon: Icon(Icons.lock_open),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 Get.toNamed('/signUp');
//               },
//               child: Text('Create New Account? SignUp'),
//             ),
//
//             ElevatedButton(onPressed: () async {
//               String res = await AuthServices.authServices
//                   .signInWithEmailAndPassword(
//                   controller.txtEmail.text, controller.txtPassword.text);
//
//               User? user = AuthServices.authServices.getCurrentUser();
//               if(user!=null && res=='Success')
//                 {
//                   Get.toNamed('/home');
//                 }
//               else
//                 {
//                   Get.snackbar("Sign In Failed !", res);
//                 }
//             }, child: Text('Sign In')),
//             SignInButton(
//                 Buttons.google,
//                 onPressed: () async {
//                   await GoggleService.goggleService.signInWithGoogle();
//                   User? user = AuthServices.authServices.getCurrentUser();
//                   if(user!=null)
//                   {
//                     Get.offAndToNamed("/home");
//                   }
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
