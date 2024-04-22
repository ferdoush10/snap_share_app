import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utilities/all_colors.dart';
import '../../utilities/styles.dart';
import '../widgets/home/status_tile.dart';
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
            return StatuleTile();
          },
          separatorBuilder: (_, __) {
            return const SizedBox(
              height: 8,
            );
          },
        ));
  }
}


