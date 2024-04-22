import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utilities/all_colors.dart';
import '../../utilities/styles.dart';
import '../widgets/home/story_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: 32.0,
          height: 32.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/id/234/60/60'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text("SociaLive",style: lobsterRegular.copyWith(fontSize: 24, color: AllColors.colorText,),),
        actions: [
          Container(
            width: 32.0,
            height: 32.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AllColors.colorBackground,
              shape: BoxShape.circle,
            ),
            child: const Center(child: Icon(Icons.notifications_none,size: 18, color: AllColors.colorText,)),
          ),
          const SizedBox(width: 10,),
          Container(
            width: 32.0,
            height: 32.0,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AllColors.colorBackground,
              shape: BoxShape.circle,
            ),
            child: const Center(child: Icon(Icons.mail_outlined,size: 18, color: AllColors.colorText,)),
          ),
          const SizedBox(width: 10,),
        ],

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height:  MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(height: 20,),
              storyList(),
              const SizedBox(height: 20,),
               Expanded(child: statusList()),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox storyList() {
    return SizedBox(
        height: 154,
        child: ListView.separated(
          itemCount: 10,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const StoryTile();
          },
          separatorBuilder: (_, __) {
            return const SizedBox(
              width: 8,
            );
          },
        ));
  }
  SizedBox statusList() {
    return SizedBox(
        child: ListView.separated(
          itemCount: 10,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          primary: false,
          shrinkWrap: false,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
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
          },
          separatorBuilder: (_, __) {
            return const SizedBox(
              height: 8,
            );
          },
        ));
  }
}

