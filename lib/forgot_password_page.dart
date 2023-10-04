import 'package:demo/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _CreateNewAccountPageState();
}

class _CreateNewAccountPageState extends State<ForgotPasswordPage> {
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key:_formKey ,
          child: SingleChildScrollView(
            child: Column(
              children: [  Padding(
                padding: EdgeInsets.only(left: 75.w, right: 75.w, top: 60.h),
                child: Text(
                  AppStringData.forgotPasswordLabel,
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
                  padding: EdgeInsets.only(left: 56.w, right: 56.w, top: 14.h),
                  child: Text(AppStringData.forgotPasswordScreenMsg,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: const Color(0xff888888)),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 331.h),
                  child: TextFormField(
                    style: TextStyle(
                        color: const Color(0xff888888),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp),
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: AppStringData.mobilePhoneHintForgotScreenText,
                      hintStyle: TextStyle(
                          color: const Color(0xff888888),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      prefixIcon: const Icon(Icons.phone),
                      prefixIconColor: const Color(0xff000000),

                      label: const Text(
                        AppStringData.mobilePhoneLabelForgotScreenText,
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
                        return 'Please enter mobile number';
                      } else if (value.length < 10 || value.length > 10) {
                        return 'Invalid phone number';
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
                    height: 170.h,
                    width: 393.w,

                    color: const Color(0xff065471),
                    child: Center(child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      height: 45.h,
                      width: 300.w,
                      child:  Center(child: Text("Login Page",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600),)),
                    ),),
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
