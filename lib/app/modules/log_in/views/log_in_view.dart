import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:ichiban_auto_interview_task/app/constent/app_colors.dart';
import 'package:ichiban_auto_interview_task/app/constent/app_text_style.dart';
import 'package:ichiban_auto_interview_task/app/constent/static_text.dart';
import 'package:ichiban_auto_interview_task/app/widgets/custom_button.dart';
import 'package:ichiban_auto_interview_task/app/widgets/custome_text_field.dart';

import '../controllers/log_in_controller.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             250.verticalSpace,
              Text(
                StaticText.login,
                style: AppTextStyle.robotoBlackW700Size25,
              ),
              10.verticalSpace,
              Text(
                StaticText.welcome,
                style: AppTextStyle.latoGreyTextW400Size15,
              ),

              50.verticalSpace,
              CustomTextFormField(
                controller: controller.emailTextController,
                hintText: "Email",
                prefixIcon: "assets/images/email.png",
                prefixIconPadding: 0,
                scale: 0.85,
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                    () => CustomTextFormField(
                  controller: controller.passwordTextController,
                  hintText: "Password",
                  prefixIcon: "assets/images/password.png",
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.makePassVisible.value = !controller.makePassVisible.value ;
                    },
                    child: controller.makePassVisible.value == true
                        ? const Icon(
                      Icons.remove_red_eye,
                      color: AppColors.iconColor,
                    )
                        : Image.asset("assets/images/eyes.png"),
                  ),
                  obsCureText:
                  controller.makePassVisible.value == true ? false : true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  StaticText.forgetPassword,
                  style: AppTextStyle.robotoGreyTextW400Size13,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onTap: () {},
                color: AppColors.logInButtonColor,
                height: 60,
                width: Get.width,
                text: StaticText.logIn,
                textStyle: AppTextStyle.robotoWhiteTextW500Size17,
              ),
              20.verticalSpace,
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    StaticText.createNewAccount,
                    style: AppTextStyle.robotoBlackTextW300Size17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
