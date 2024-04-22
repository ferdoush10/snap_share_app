import 'package:flutter/material.dart';
import 'package:snap_share_app/utilities/all_colors.dart';
import 'package:snap_share_app/utilities/styles.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressedButton;
  const ElevatedButtonWidget({super.key, required this.title, required this.onPressedButton});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 36,
      child: ElevatedButton(onPressed: onPressedButton,
        style: ElevatedButton.styleFrom(
            backgroundColor: AllColors.buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )
        ),
        child: Text(title, style: satoshiBold.copyWith(
            color: AllColors.colorWhite,
            fontSize: 14
        )),

      ),
    );
  }
}

