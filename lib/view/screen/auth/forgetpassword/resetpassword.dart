import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_wael/view/widget/auth/custombuttonauth.dart';
import 'package:login_wael/view/widget/auth/customtextbodyauth.dart';
import 'package:login_wael/view/widget/auth/customtextformauth.dart';
import 'package:login_wael/view/widget/auth/customtexttitleauth.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/constant/color.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "New Password"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(text: "Please Enter new Password"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            valid: (val) {},
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomTextFormAuth(
            valid: (val) {},
            mycontroller: controller.repassword,
            hinttext: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomButtomAuth(
              text: "save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
