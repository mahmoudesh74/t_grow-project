

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_grow/data/core/local/app_local.dart';
import 'package:t_grow/presentation/views/first_photo/view.dart';
import 'package:t_grow/presentation/views/helper_method.dart';
import 'package:t_grow/presentation/views/sign_up/view.dart';
import 'package:t_grow/data/cubits/login/state_cubit.dart';
import 'package:t_grow/data/cubits/login/user__cubit.dart';

import '../../../app/app_colors.dart';
import '../../../app/app_images.dart';
import '../../components/custom_bottom.dart';
import '../forget_password/view.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

final formKeyy = GlobalKey<FormState>();
class _LogInState extends State<LogIn> {
  late UserCubit cubit;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  bool _obscureText = true;
  @override
  void initState() {
    super.initState();
    cubit = BlocProvider.of(context);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Stack(
          children: [

        Container(
        
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.Backgroundd),fit: BoxFit.fill
            ),
            ),),
            Padding(
              padding: EdgeInsets.only(top: 100, right: 30.h,left: 30,bottom: 30),
              child: SingleChildScrollView(
                child: Form(
                  key:cubit.formKeyy ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.TGrowLogo),
                      SizedBox(height: 50.h,),
                      TextFormField( validator: (value) {
                        if (value!.isEmpty) {
                          return ("Email not exist");
                        } else if (value.length < 3) {
                          return "Email 3 letter ata least ";
                        }
                        return null;
                      },
                        controller: cubit.emailController,

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          hintText:"5".tr(context),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("password not exist ");
                          } else if (value.length < 8) {
                            return " password 8 letters ata least";
                          }
                          return null;
                        },
                        controller: cubit.passwordController,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: "6".tr(context),
                          fillColor: Colors.white,
                          suffixIcon:  IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _toggle,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            const ForgetPassword()));
                              },
                              child:  Text("7".tr(context),
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 14)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      BlocBuilder(
                        bloc: cubit,
                        builder: (context, state) {
                          return  InkWell(
                              onTap: () {
                                if (cubit.formKeyy.currentState!.validate()) {
                                  cubit.login();
                                }
                              },
                              child: CustomBottom(
                                name: "8".tr(context),
                                height: 49.h,
                                width: 344.w,
                              ));
                        },
                      ),
                      // InkWell(
                      //     onTap: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) =>  FirstPhoto(email: UserCubit.get(context).emailController.toString(),
                      //                 password: UserCubit.get(context).passwordController.toString(),)));
                      //     },
                      //     child: CustomBottom(
                      //         name: "Login", width: 344.w, height: 49)),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(children: <Widget>[
                          const Expanded(
                              child: Divider(
                            color: Colors.white,
                          )),
                          Text(
                            "9".tr(context),
                            style: GoogleFonts.montserrat(
                                color: Colors.white, fontSize: 12),
                          ),
                          const Expanded(
                              child: Divider(
                            color: Colors.white,
                          )),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.facebookLogo,
                              width: 100.w,
                              height: 50.h,
                            ),
                            Image.asset(
                              AppImages.googleLogo,
                              width: 100.w,
                              height: 50.h,
                            ),
                            Image.asset(
                              AppImages.iphonelogo,
                              width: 100.w,
                              height: 50.h,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "10".tr(context),
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 14),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => const SignUp()));
                              },
                              child: Text(
                                "4".tr(context),
                                style: GoogleFonts.montserrat(
                                    color: AppColors.fontColor, fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )],
        )



);
  }
}
