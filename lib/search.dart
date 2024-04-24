import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: const Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  Text("Search")
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
              ),
              itemCount: 21,
              itemBuilder: (context, index) {
                return Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",fit: BoxFit.cover,);
              },
            ),
          ),
        ],
      ),
    );
  }
}

