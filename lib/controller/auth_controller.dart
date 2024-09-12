import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController
{
  var txtEmail = TextEditingController();
  var txtPassword = TextEditingController();
  var txtName = TextEditingController();
  var txtConfirmPassword = TextEditingController();
  var txtPhone = TextEditingController();
  var txtImage = TextEditingController();
  var txtToken = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
}