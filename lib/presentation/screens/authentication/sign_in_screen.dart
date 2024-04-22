import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_app/utilities/styles.dart';

import '../../../../utilities/all_colors.dart';
import '../../widgets/button_design.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool  isPasSaved = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Get.back();
            }, padding: const EdgeInsets.all(0),
            icon: const Icon(CupertinoIcons.back,color: AllColors.colorText,size: 24,)),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100,),
              Text(
                'Inter your phone number and password',
                style: satoshiRegular.copyWith(
                    color: AllColors.colorText, fontSize: 24),
              ),
              const SizedBox(height: 60,),
              Text(
                'Email',
                style: satoshiMedium.copyWith(
                    color: AllColors.colorText, fontSize: 14),
              ),
              const SizedBox(height: 6,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: AllColors.colorBlueBorder,
                      width: 1,
                    )
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.mail,size: 20,color: AllColors.colorText,),
                    const SizedBox(width: 10,),
                     Container(
                       width: 1,
                      color: AllColors.colorText,
                     height: 14,),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: TextFormField(
                        controller: _emailTEController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        decoration:  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          hintText: 'Input Email',
                          hintStyle: satoshiSemiBold.copyWith(color: AllColors.colorSubtitleText,fontSize: 14),),
                        validator: (value) {
                          if (value?.trim().isEmpty ?? true) {
                            return 'Enter Email';
                          }
                          // TODO: Validate 11 digit
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Password',
                style: satoshiMedium.copyWith(
                    color: AllColors.colorText, fontSize: 14),
              ),
              const SizedBox(height: 6,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: AllColors.colorBlueBorder,
                      width: 1,
                    )
                ),
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.lock,size: 20,color: AllColors.colorText,),
                    const SizedBox(width: 10,),
                    Container(
                      width: 1,
                      color: AllColors.colorText,
                      height: 14,),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: TextFormField(
                        controller: _passwordTEController,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                        decoration:  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          hintText: 'Input Password',
                          hintStyle: satoshiSemiBold.copyWith(color: AllColors.colorSubtitleText,fontSize: 14),),
                        validator: (value) {
                          if (value?.trim().isEmpty ?? true) {
                            return 'Enter Password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Transform.scale(
                    scale: .8,
                  child: Checkbox(

                    visualDensity: const VisualDensity(horizontal: -4.0, vertical:-4.0),
                    checkColor: AllColors.colorWhite,
                    activeColor: AllColors.buttonColor,
                    // fillColor: MaterialStateProperty.all<Color>(AllColors.buttonColor),
                    side: const BorderSide(
                        width: 2,
                        color: AllColors.colorCheckboxBorder
                    ),
                    value: isPasSaved,
                    onChanged: (bool? value) {
                      setState(() {
                        isPasSaved = value!;
                      });
                    },
                  ),),

                  const SizedBox(width: 10),
                  Text(
                    'Save password',
                    style: satoshiMedium.copyWith(
                        color: AllColors.colorText, fontSize: 12),
                  ),
                ], //<Widget>[]
              ),
              const SizedBox(height: 40,),
              ElevatedButtonWidget(title: 'Log In', onPressedButton: (){})

            ],
          ),
        ),
      ),
    );
  }
}
