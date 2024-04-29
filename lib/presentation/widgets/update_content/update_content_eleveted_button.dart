import 'package:flutter/material.dart';

class UpdataContentElevetedButton extends StatelessWidget {
  const UpdataContentElevetedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

    },style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        backgroundColor: Colors.grey.shade300
    ), child: const Text("Multiple Select",style: TextStyle(
        color: Colors.black54,
        fontWeight:   FontWeight.bold
    ),));
  }
}


















