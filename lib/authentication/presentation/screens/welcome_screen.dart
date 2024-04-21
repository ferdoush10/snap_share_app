import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snap_share_app/authentication/presentation/screens/create_account_screen.dart';
import 'package:snap_share_app/authentication/presentation/screens/sign_in_screen.dart';
import 'package:snap_share_app/authentication/presentation/widgets/button_design.dart';
import 'package:snap_share_app/utilities/all_colors.dart';
import 'package:snap_share_app/utilities/styles.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SociaLive",style: lobsterRegular.copyWith(fontSize: 24, color: AllColors.colorText,),),
            const SizedBox(height: 40,),
            ElevatedButtonWidget(title: 'Create Account', onPressedButton: (){
              Get.to(const CreateAccountScreen());
            }),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.to(const SignInScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Log In",style: satoshiBold.copyWith(fontSize: 14, color: AllColors.buttonColor,),),
                  const SizedBox(width: 10,),
                  const Icon(CupertinoIcons.chevron_down,size: 20,color: AllColors.buttonColor,)

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
