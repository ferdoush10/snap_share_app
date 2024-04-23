import 'package:flutter/material.dart';

class UpdataContentElevetedButton extends StatelessWidget {
  const UpdataContentElevetedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){

    }, child: Text("Multiple Select",style: TextStyle(
        color: Colors.black54,
        fontWeight:   FontWeight.bold
    ),),style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        backgroundColor: Colors.grey.shade300
    ));
  }
}


















