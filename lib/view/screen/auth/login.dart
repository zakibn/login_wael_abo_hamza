import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/logoauth.dart';
import '../../widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const LogoAuth(),
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "Welcome Back"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text:
                    "Sign In With Your Email And Password OR Continue With Social Media"),
            const SizedBox(height: 65),
            CustomTextFormAuth(
              valid: (val) {
                return validInput(val!, 5, 100, "email");
              },
              mycontroller: controller.email,
              hinttext: "Enter Your Email",
              iconData: Icons.email_outlined,
              labeltext: "Email",
              // mycontroller: ,
            ),
            GetBuilder<LoginControllerImp>(
              builder: (controller) => CustomTextFormAuth(
                obscureText: controller.isshowpassword,
                onTapIcon: () {
                  controller.showPassword();
                },
                valid: (val) {
                  return validInput(val!, 5, 30, "password");
                },
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                iconData: Icons.lock_outline,
                labeltext: "Password",
                // mycontroller: ,
              ),
            ),
            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtomAuth(
                text: "Sign In",
                onPressed: () {
                  controller.login();
                }),
            const SizedBox(height: 30),
            CustomTextSignUpOrSignIn(
              textone: "Don't have an account ? ",
              texttwo: "SignUp",
              onTap: () {
                controller.goToSignUp();
              },
            )
          ]),
        ),
      ),
    );
  }
}
