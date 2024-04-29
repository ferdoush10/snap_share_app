
import 'package:flutter/material.dart';

class OtherProfile extends StatelessWidget {
  const OtherProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ostad"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 90,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Row(
                          children: [
                            Text("59"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("post")
                          ],
                        ),
                        SizedBox(width: 25),
                        Row(
                          children: [
                            Text("59"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Following")
                          ],
                        ),
                        SizedBox(width: 25),
                        Row(
                          children: [
                            Text("59"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Follower")
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text("Visit"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("https//ostad.com")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 80,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: const Center(child: Text("Follow")),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: const Center(child: Text("Message")),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 25),
                Row(
                  children: [
                    SizedBox(child: Icon(Icons.grid_view)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("grid vew")
                  ],
                ),
                SizedBox(width: 25),
                Row(
                  children: [
                    Icon(Icons.list_alt),
                    SizedBox(
                      width: 5,
                    ),
                    Text("List vew")
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                  width: 220,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                      width: 150,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                      width: 150,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                            width: 115,
                            height: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    })),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Image(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                            width: 200,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    })),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg"),
                            width: 115,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}