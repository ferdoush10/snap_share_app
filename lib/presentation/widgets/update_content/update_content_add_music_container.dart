import 'package:flutter/material.dart';

class updateContentAddMusicContainer extends StatelessWidget {
  const updateContentAddMusicContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height:35,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.music_note,color: Colors.grey.shade700,),
              ),
              const SizedBox(width: 5,),
              const Text("Multiple Select",style: TextStyle(
                  fontWeight: FontWeight.w400
              ),)
            ],
          ),
        )
    );
  }
}