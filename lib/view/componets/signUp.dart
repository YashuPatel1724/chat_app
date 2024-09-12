import 'package:chat_app/modal/user_modal.dart';
import 'package:chat_app/services/auth_services.dart';
import 'package:chat_app/services/firebase_cloud_service.dart';
import 'package:chat_app/view/componets/signIn_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 170,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controller.txtName,
                decoration: InputDecoration(
                  label: Text('Name'),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextField(
                controller: controller.txtEmail,
                decoration: InputDecoration(
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controller.txtPhone,
                decoration: InputDecoration(
                  label: Text('Phone No.'),
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controller.txtPassword,
                decoration: InputDecoration(
                  label: Text('Password'),
                  prefixIcon: Icon(Icons.lock_open),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: controller.txtConfirmPassword,
                decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  prefixIcon: Icon(Icons.lock_open),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                controller.txtPassword.clear();
                controller.txtEmail.clear();
              },
              child: Text('Sign In'),
            ),

            ElevatedButton(onPressed: () async {
              if (controller.txtPassword.text ==
                  controller.txtConfirmPassword.text) {
                try {
                  await AuthServices.authServices.createAccountWithEmailAndPassword(
                    controller.txtEmail.text,
                    controller.txtPassword.text,
                  );
                  UserModal userModal = UserModal(
                    controller.txtName.text,
                    controller.txtPhone.text,
                    '',
                    controller.txtEmail.text,
                    '',
                  );

                  await FirebaseCloudService.firebaseCloudService
                      .insertUserIntoFireStore(userModal);
                  controller.txtPassword.clear();
                  controller.txtEmail.clear();
                  controller.txtName.clear();
                  controller.txtConfirmPassword.clear();
                  controller.txtPhone.clear();
                  Get.back();
                } catch (e) {
                  Get.snackbar(
                    "Error",
                    e.toString(),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
              } else {
                // Show error if passwords do not match
                Get.snackbar(
                  "Password Mismatch",
                  "The passwords you entered do not match.",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                );
              }
            }, child: Text('Sign Up'))
          ],
        ),
      ),
    );
  }
}