import 'package:chat_app/services/auth_services.dart';
import 'package:chat_app/services/goggle_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        actions: [
          InkWell(
            onTap: () async {
              await AuthServices.authServices.signOut();
              GoggleService.goggleService.googleSignOut();
              User? user = AuthServices.authServices.getCurrentUser();

              if(user == null) {
                Get.offAndToNamed('/signIn');
              }
            },
              child: Icon(Icons.login))],
      ),
    );
  }
}
