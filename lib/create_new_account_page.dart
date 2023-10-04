import 'package:demo/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CreateNewAccountPage extends StatefulWidget {
  const CreateNewAccountPage({super.key});

  @override
  State<CreateNewAccountPage> createState() => _CreateNewAccountPageState();
}

class _CreateNewAccountPageState extends State<CreateNewAccountPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key:_formKey ,
          child: SingleChildScrollView(
            child: Column(
              children: [  Padding(
                padding: EdgeInsets.only(left: 47.w, right: 46.w, top: 60.h),
                child: Text(
                  AppStringData.createNewAccountLabel,
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
                  padding: EdgeInsets.only(left: 65.w, right: 60.w, top: 14.h),
                  child: Text(AppStringData.createNewAccountScreenMsg,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: const Color(0xff888888)),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 71.h),
                  child: TextFormField(
                    style: TextStyle(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: AppStringData.nameHint,
                      hintStyle: TextStyle(
                          color: const Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      prefixIcon: const Icon(Icons.person),
                      prefixIconColor: const Color(0xff000000),

                      label: const Text(
                        AppStringData.nameLabel,
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
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a name';
                      } else if (value.length > 25) {
                        return 'Length should be less than 25';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 21.h),
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
                        AppStringData.mobilePhoneLabelTextCreateScreen,
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
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 21.h),
                  child: TextFormField(
                    style: TextStyle(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: AppStringData.passwordHint,
                      hintStyle: TextStyle(
                          color: const Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      prefixIcon: const Icon(Icons.lock_outline),
                      prefixIconColor: const Color(0xff000000),

                      label: const Text(
                        AppStringData.passwordCreateScreenText,
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
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    obscuringCharacter: "*",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 digits';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 21.h),
                  child: TextFormField(
                    style: TextStyle(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: AppStringData.passwordHint,
                      hintStyle: TextStyle(
                          color: const Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      prefixIcon: const Icon(Icons.key),
                      prefixIconColor: const Color(0xff000000),

                      label: const Text(
                        AppStringData.confirmPasswordText,
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
                    obscureText: true,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 digits';
                      }
                      else if(passwordController.text!=confirmPasswordController.text)
                        {
                          return 'Password not match';
                        }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 21.h, right: 27.w, left: 27.w),
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
                        AppStringData.createNewAccountPageButton,
                        style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32.h,bottom: 0.h),
                  child: Container(
                    height: 198.h,
                    width: 393.w,

                    color: const Color(0xff065471),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 40.h, left: 110.w, right: 110.w),
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              AppStringData.alreadyHaveAccountText,
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
      ),

    );
  }
}
