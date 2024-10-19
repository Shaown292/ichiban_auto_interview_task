import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  //TODO: Implement LogInController

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool makePassVisible = false.obs;


  @override
  void onInit() {
    super.onInit();
  }


}
