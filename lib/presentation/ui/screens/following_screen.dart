import 'package:flutter/material.dart';
import 'package:snap_share_app/presentation/ui/utility/textstyle.dart';
import 'package:snap_share_app/presentation/ui/widgets/search_box.dart';

class FollowUsersPage extends StatefulWidget {
  @override
  _FollowUsersPageState createState() => _FollowUsersPageState();
}

class _FollowUsersPageState extends State<FollowUsersPage> {
  List<User> users = [
    User(name: "User 1", username: "username1", followed: true),
    User(name: "User 2", username: "username2", followed: true),
    User(name: "User 3", username: "username3", followed: true),
    User(name: "User 4", username: "username4", followed: true),
    User(name: "User 5", username: "username5", followed: true),
    User(name: "User 6", username: "username6", followed: true),
    User(name: "User 7", username: "username7", followed: true),
    User(name: "User 8", username: "username8", followed: true),
    User(name: "User 9", username: "username9", followed: true),
    User(name: "User 10", username: "username10",followed: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('Follow Users'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                  height: 50, width: double.infinity, child: SearchTextField()),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: following_Listview(),
            ),
          ],
        ),
      ),
    );
  }

  ListView following_Listview() {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(users[index].name, style: siz17Black()),
                  Text(
                    users[index].username,
                    style: siz14Grey(),
                  ),
                ],
              ),
              trailing: TextButton(
                onPressed: () {
                  setState(() {
                    users[index].followed = !users[index].followed;
                  });

                },
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      users[index].followed ? Colors.black : Colors.white,
                  backgroundColor:
                      users[index].followed ? Color(0xffd2d0cd) : Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(users[index].followed ? 'Unfollow' : 'Follow'),
              ),
            ),
            const Divider(
              height: 7,
            ),
          ],
        );
      },
    );
  }
}

class User {
  String name;
  String username;
  bool followed;

  User({
    required this.name,
    required this.username,
    required this.followed,
  });
}
