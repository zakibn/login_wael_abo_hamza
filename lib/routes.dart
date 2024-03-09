import 'package:flutter/material.dart';
import 'package:login_wael/view/screen/auth/checkemail.dart';
import 'package:login_wael/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:login_wael/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:login_wael/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:login_wael/view/screen/auth/login.dart';
import 'package:login_wael/view/screen/auth/signup.dart';

import 'core/constant/routes.dart';
import 'view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'view/screen/auth/success_signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.checkemail: (context) => const CheckEmail(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
};
