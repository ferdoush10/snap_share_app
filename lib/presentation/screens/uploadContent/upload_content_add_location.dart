import 'package:flutter/material.dart';
import 'package:snap_share_app/utilities/all_size.dart';
import 'package:snap_share_app/presentation/widgets/search_bar.dart';


class UploadContentAddLocation extends StatelessWidget {
  const UploadContentAddLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          title: const Text(
            "Add Location",
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
            const AppSearchBar(),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: const Text("Jamuna Future Park",style: TextStyle(
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

