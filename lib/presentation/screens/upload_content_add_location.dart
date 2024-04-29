import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snap_share_app/presentation/widgets/update_content/update_content_add_music_container.dart';
import 'package:snap_share_app/presentation/widgets/update_content/update_content_eleveted_button.dart';
import 'package:snap_share_app/utilities/all_colors.dart';
import 'package:snap_share_app/utilities/all_size.dart';
import 'package:snap_share_app/utilities/styles.dart';
import 'package:snap_share_app/widget/search_bar.dart';


class UploadContentAddLocation extends StatelessWidget {
  const UploadContentAddLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_outlined),
          title: const Text(
            "Add Location",
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
            AppSearchBar(),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text("Jamuna Future Park",style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),),
                      subtitle: Text("0.4. km-244, Progoti Sarani, Baridhara",style: TextStyle(
                        color: Colors.grey.shade600
                      ),),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

