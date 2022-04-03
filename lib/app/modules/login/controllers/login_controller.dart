import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final obsecureText = true.obs;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firebaseAuth = FirebaseAuth.instance;
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
