import 'package:flutter/material.dart';
import 'package:snap_share_app/presentation/widgets/app_seach_bar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          AppSearchBar(),
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



