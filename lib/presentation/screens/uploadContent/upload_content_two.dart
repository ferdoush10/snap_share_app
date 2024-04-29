
import 'package:flutter/material.dart';
import 'package:snap_share_app/utilities/all_colors.dart';
import 'package:snap_share_app/utilities/all_size.dart';
import 'package:snap_share_app/utilities/styles.dart';


class UploadContentTwo extends StatelessWidget {
  const UploadContentTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          title: const Text(
            "New Post",
            style: TextStyle(
                fontSize: AllSizes.fontSizeExtraOverLarge,
                fontWeight: FontWeight.w600),
          ),
          actions: const [
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
                  SizedBox(
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

            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  leading: const Icon(Icons.location_on_outlined,color: Colors.blue,),
                  title: const Text("Jamuna Future Park",style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),),
                  subtitle: Text("0.4mi. ka-244, Progati Sarani, kuril, Baridhara",maxLines: 1,style: TextStyle(
                      color: Colors.grey.shade500
                  ),),
                  trailing: const Icon(Icons.close,color: Colors.grey,),
                )
            ),
            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),

            Divider(
              height: 1,
              color: Colors.grey.withOpacity(.4),
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  leading: const Icon(Icons.play_circle_outline_rounded,color: Colors.blue,),
                  title: const Text("Rema, Selena Gomez - Calm Down",style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),),
                  subtitle: Text("20 second",maxLines: 1,style: TextStyle(
                      color: Colors.grey.shade500
                  ),),
                  trailing: const Icon(Icons.close,color: Colors.grey,),
                )
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