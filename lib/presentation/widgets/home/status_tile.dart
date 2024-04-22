import 'package:flutter/material.dart';

import '../../../utilities/all_colors.dart';
import '../../../utilities/styles.dart';

class StatuleTile extends StatelessWidget {
  const StatuleTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.all(2),
                width: 40,
                height: 40,
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
              ),
              const SizedBox(width: 10,),
              Column(
                children: [
                  Text('You' , style: satoshiBold.copyWith(color: AllColors.colorText,fontSize: 16),),
                  Text('You' , style: satoshiRegular.copyWith(color: AllColors.colorCheckboxBorder,fontSize: 12),)

                ],
              ),
              const Spacer(),
              Container(
                width: 32.0,
                height: 32.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AllColors.colorBackground,
                  shape: BoxShape.circle,
                ),
                child: const Center(child: Icon(Icons.notifications_none_outlined,size: 18, color: AllColors.colorText,)),

              ),
              const SizedBox(width: 10,)
            ],
          ),
          const SizedBox(height: 10,),
          Container(
              height: MediaQuery.of(context).size.width-20,
              width: MediaQuery.of(context).size.width-20,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network('https://picsum.photos/id/238/500/500',fit: BoxFit.fill,),
              )

          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              const Icon(Icons.favorite_outlined,color: Colors.red,size: 24,),
              const SizedBox(width: 6,),
              const Icon(Icons.messenger_outline,color: AllColors.colorText,size: 24,),
              const SizedBox(width: 6,),
              Text('20 comments' , style: satoshiSemiBold.copyWith(color: AllColors.colorText,fontSize: 14),),
              const Spacer(),
              const Icon(Icons.bookmark_border_outlined,color: AllColors.colorText,size: 24,),
              const SizedBox(width: 10,),




            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.all(2),
                width: 32,
                height: 32,
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
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: 'Add comments',
                    hintStyle: satoshiSemiBold.copyWith(color: AllColors.colorSubtitleText,fontSize: 14),),

                ),
              ),
            ],
          ),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}
