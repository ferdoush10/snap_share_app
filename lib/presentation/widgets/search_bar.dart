import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}