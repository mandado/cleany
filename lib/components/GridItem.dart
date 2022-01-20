import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const GridItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 60,),
          const SizedBox(height: 20,),
          Text(title)
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadiusDirectional.all(Radius.circular(20))),
    );
  }
}
