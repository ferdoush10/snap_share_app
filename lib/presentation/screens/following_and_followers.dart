import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snap_share_app/presentation/widgets/app_seach_bar.dart';

class FollowingAndFollowers extends StatefulWidget {
  const FollowingAndFollowers({super.key});

  @override
  State<FollowingAndFollowers> createState() => _FollowingAndFollowersState();
}

class _FollowingAndFollowersState extends State<FollowingAndFollowers> {
  bool showFollowing = true;
  Set<String> followedUsers = {};

  List<String> followingList = [
    'Sagor ahamed',
    'Rahim ahamed',
    'karim ahamed',
    'Rahat ahamed',
    'Rizvi ahamed',
    'Kabir ahamed',
    'Rakib ahamed',
    'Jibon ahamed',
    'Istiak ahamed',
    'Raza ahamed'
  ];
  List<String> followerList = [
    'Sagor ahamed',
    'Rahim ahamed',
    'karim ahamed',
    'Rahat ahamed',
    'Rizvi ahamed',
    'Kabir ahamed',
    'Rakib ahamed',
    'Jibon ahamed',
    'Istiak ahamed',
    'Raza ahamed'
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios),
            title: Text(showFollowing ? 'Following' : 'Followers'),
            bottom: TabBar(tabs: [
              Tab(
                text: "Following",
              ),
              Tab(
                text: "Followers",
              )
            ]),
          ),
          body: TabBarView(children: [
            _buildFollowingList(),
            _buildFollowerList(),
          ]),
        ),
      ),
    );
  }

  Widget _buildFollowingList() {
    return Column(
        children: [
          AppSearchBar(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final String userName = followingList[index];
                  final bool isFollowing = followedUsers.contains(userName);
                  return ListTile(
                    leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/19664604/pexels-photo-19664604/free-photo-of-portrait-of-man-playing-on-guitar-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")),
                    title: Text(
                      userName,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "@sagor",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    trailing: SizedBox(
                      height: 32,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (isFollowing) {
                              followedUsers.remove(userName);
                            } else {
                              followedUsers.add(userName);
                            }
                          });
                        },
                        child: Text(isFollowing ? "Follow" : "Unfollow"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: isFollowing ? Colors.blue : null,
                            foregroundColor: isFollowing ? Colors.white : null,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7))),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 2,
                  );
                },
                itemCount: followingList.length),
          ),
        ]
    );
  }

  Widget _buildFollowerList() {
    return Column(
        children: [
          AppSearchBar(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final String userName = followerList[index];
                  final bool isFollowing = followedUsers.contains(userName);
                  return ListTile(
                    leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/19664604/pexels-photo-19664604/free-photo-of-portrait-of-man-playing-on-guitar-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")),
                    title: Text(
                      userName,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _showRemoveAlert(userName);
                        });
                      },
                      child: Text("Remove"),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 2,
                  );
                },
                itemCount: followerList.length),
          ),
        ]
    );
  }

  void _showRemoveAlert(String userName) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
            height: 150,
            child: Column(
              children: [
                ListTile(
                  title: ListTile(
                    leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/19664604/pexels-photo-19664604/free-photo-of-portrait-of-man-playing-on-guitar-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")),
                    title: Text(
                      userName,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("@sagor"),
                  ),
                ),
                Divider(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          followerList.remove(userName);
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                )
              ],
            ));
      },
    );
  }
}
