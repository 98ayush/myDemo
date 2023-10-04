import 'package:demo/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 85.w, right: 85.w, top: 121.h),
                child: Text(
                  AppStringData.welcomeBack,
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    //height: 36.31.h
                  ),
                  textAlign: TextAlign.right,
                  //textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 62.w, right: 48.w, top: 23.h),
                child: Text(AppStringData.loginScreenDisplayMessage,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color(0xff888888)),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 49.h),
                child: TextFormField(
                  style: TextStyle(
                      color: const Color(0xff888888),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                    hintText: AppStringData.mobilePhoneHintText,
                    hintStyle: TextStyle(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    prefixIcon: const Icon(Icons.phone),
                    prefixIconColor: const Color(0xff000000),

                    label: const Text(
                      AppStringData.mobilePhoneLabelText,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                    //labelText: 'Enter Text',
                    border: const OutlineInputBorder(), // Normal border
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: const Color(0xff065471),
                          width: 2.w), // Focused border
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red, width: 2.w), // Error border
                    ),
                    labelStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey, // Label text color when not focused
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none, // No border when enabled
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a phone number';
                    } else if (value.length < 10 || value.length > 10) {
                      return 'Invalid phone number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 28.w, right: 28.w),
                child: TextFormField(
                  style: TextStyle(
                      color: const Color(0xff888888),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp),
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: AppStringData.mobilePhoneHintText,
                    hintStyle: TextStyle(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    prefixIcon: const Icon(Icons.lock_outline),
                    prefixIconColor: const Color(0xff000000),

                    label: Text(
                      AppStringData.passwordLabelText,
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                    border: const OutlineInputBorder(), // Normal border
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: const Color(0xff065471),
                          width: 2.w), // Focused border
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red, width: 2.w) // Error border
                        ),
                    labelStyle: const TextStyle(
                      color: Colors.grey, // Label text color when not focused
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none, // No border when enabled
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    } else if (value.length <= 8) {
                      return 'Password must be at least 8 digits';
                    }
                    return null;
                  },
                  obscuringCharacter: "*",
                  obscureText: true,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(color: Colors.black),
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                          fillColor: MaterialStateProperty.all(Colors.white),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                        Text(
                          AppStringData.rememberMeText,
                          style: TextStyle(
                              color: const Color(0xff000000),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(AppStringData.forgotPasswordText,
                          style: TextStyle(
                              color: const Color(0xff065471),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, right: 28.w, left: 28.w),
                child: SizedBox(
                  width: 337.w,
                  height: 51.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff0C2233))),
                    onPressed: () =>
                        {if (_formKey.currentState!.validate()) {}},
                    child: Text(
                      AppStringData.loginButtonLabel,
                      style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 90.h),
                child: Container(
                  //height: 198.h,
                  width: 393.w,

                  color: const Color(0xff065471),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 40.h, left: 126.w, right: 126.w),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            AppStringData.createNewAccountButtonLabel,
                            style: TextStyle(
                                color: const Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 46.w, right: 47.w, top: 39.h, bottom: 28.h),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 45.h,
                          width: 300.w,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
