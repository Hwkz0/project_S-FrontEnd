import 'package:flutter/material.dart';

class HorizontalScrollMenu extends StatelessWidget {
  HorizontalScrollMenu({Key? key}) : super(key: key);

// those filtering categories wil be predefined so no need to take args
// as we will not need to chnage them dynamically

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MenuItem(title:'Populare', icon: Icons.whatshot),
          MenuItem(title:'Evenimente', icon: Icons.celebration),
          MenuItem(title:'Tehnice', icon: Icons.engineering),
          MenuItem(title:'Educatie', icon: Icons.school),
          MenuItem(title:'HoReCa', icon: Icons.local_cafe),
          MenuItem(title:'Vanzari', icon: Icons.attach_money),
          MenuItem(title:'Creative', icon: Icons.emoji_objects),
          MenuItem(title:'Altele', icon: Icons.dynamic_feed),
        ],
      ),
    );
  }
}

// TODO: menuitem widget should be clickable with a filter fucntionality for the cards that will be shown
class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      // Add your filter functionality here
      },
      child: Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(icon),
        SizedBox(width: 10),
        Text(title),
        ],
      ),
      ),
    );
  }
}