import 'package:flutter/material.dart';
import '../../../utilities/all_colors.dart';
import '../../../utilities/styles.dart';

class StoryTile extends StatelessWidget {
  const StoryTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 154,
      decoration: BoxDecoration(
        color: AllColors.colorStoryBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: AllColors.colorStoryBorder,
            width: 1
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [

              Container(
                  height: 128,
                  width: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network('https://picsum.photos/id/231/100/100',fit: BoxFit.cover,),
                  )

              ),
              Positioned(
                  top: 5,
                  left: 5,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: AllColors.colorWhite,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: AllColors.buttonColor,
                            width: 1
                        )
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network('https://picsum.photos/id/239/100/100',fit: BoxFit.cover,),
                    ),
                  )),
              const Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Icon(Icons.add, size: 24,color: AllColors.colorWhite,))
            ],
          ),
          const SizedBox(height: 4,),
          Text('You' , style: satoshiBold.copyWith(color: AllColors.colorText,fontSize: 12),)
        ],
      ),
    );
  }
}
