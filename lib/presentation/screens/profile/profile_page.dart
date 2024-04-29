
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/my_number.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/e76d4296-43f3-493b-9d50-f8e5c142d06c/2117667014/boys-profile-picture-screenshot.png'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ferdoush Wahid',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '@ferdoush10',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyNumber(num: 59, text: "post"),
                MyNumber(num: 59, text: "post"),
                MyNumber(num: 59, text: "post"),
              ],
            ),
          ),
          //Divider
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Divider(
              thickness: 7,
              color: Colors.grey,
            ),
          ),

          // grid view menu list view menu

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.grid_on),
                  SizedBox(width: 15),
                  Text(
                    'Grid View',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.list),
                  SizedBox(width: 15),
                  Text(
                    'List View',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),

          //ggrid view

          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Image.network(
                    'https://www.mountain-equipment.co.uk/cdn/shop/files/SHOPIFY_Home_Page_Banners_5_16d28399-71c0-4555-9886-8f7e770744db.png?height=894&v=1712312179&width=1920'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Image.network(
                    'https://www.mountain-equipment.co.uk/cdn/shop/files/SHOPIFY_Home_Page_Banners_5_16d28399-71c0-4555-9886-8f7e770744db.png?height=894&v=1712312179&width=1920'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Image.network(
                    'https://www.mountain-equipment.co.uk/cdn/shop/files/SHOPIFY_Home_Page_Banners_5_16d28399-71c0-4555-9886-8f7e770744db.png?height=894&v=1712312179&width=1920'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Image.network(
                    'https://www.mountain-equipment.co.uk/cdn/shop/files/SHOPIFY_Home_Page_Banners_5_16d28399-71c0-4555-9886-8f7e770744db.png?height=894&v=1712312179&width=1920'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Image.network(
                    'https://www.mountain-equipment.co.uk/cdn/shop/files/SHOPIFY_Home_Page_Banners_5_16d28399-71c0-4555-9886-8f7e770744db.png?height=894&v=1712312179&width=1920'),
              ),
            ],
          ),
        ]),
      ),

      //bottomnavigatioon bar

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            tabBorderRadius: 0,
            color: Colors.black,
            activeColor: Colors.blueAccent,
            tabBackgroundColor: Colors.blue.shade50,
            tabs: const [
              GButton(
                icon: Icons.home,
                iconSize: 30,
              ),
              GButton(
                icon: Icons.search,
                iconSize: 30,
              ),
              GButton(
                icon: Icons.add,
                iconSize: 30,
              ),
              GButton(
                icon: Icons.person,
                iconSize: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
