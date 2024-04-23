import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snap_share_app/presentation/widgets/update_content/update_content_add_music_container.dart';
import 'package:snap_share_app/presentation/widgets/update_content/update_content_eleveted_button.dart';
import 'package:snap_share_app/utilities/all_colors.dart';
import 'package:snap_share_app/utilities/all_size.dart';
import 'package:snap_share_app/utilities/styles.dart';


class UploadContent extends StatelessWidget {
  const UploadContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_outlined),
          title: const Text(
            "New Post",
            style: TextStyle(
                fontSize: AllSizes.fontSizeExtraOverLarge,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            Row(
              children: [
                Text(
                  "Post",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.keyboard_arrow_right_outlined)
              ],
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Image.network(
                            "https://images.pexels.com/photos/20408466/pexels-photo-20408466/free-photo-of-admiring-the-peak-district.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                            width: 110,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 5,
                              decoration:  InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                hintText: 'Write a caption',
                                hintStyle: satoshiSemiBold.copyWith(color: AllColors.colorSubtitleText,fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Add Location",style: TextStyle(
                  fontSize: AllSizes.fontSizeLarge,
                  fontWeight: FontWeight.w500
              ),),
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      UpdataContentElevetedButton(),
                      SizedBox(width: 10,),
                      UpdataContentElevetedButton(),
                      SizedBox(width: 10,),
                      UpdataContentElevetedButton(),
                    ],
                  ),
                )
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Add Music",style: TextStyle(
                  fontSize: AllSizes.fontSizeLarge,
                  fontWeight: FontWeight.w500
              ),),
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                updateContentAddMusicContainer(),
                SizedBox(width: 10,),
                updateContentAddMusicContainer(),
                SizedBox(width: 10,),
                updateContentAddMusicContainer()
              ],),
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
          ],
        ),
      ),
    );
  }
}

