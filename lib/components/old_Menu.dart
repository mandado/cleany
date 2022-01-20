import 'dart:ui';

import 'package:cleany/models/MenuItem.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

List<MenuItem> items = [
  MenuItem(
      text: 'Limpeza', color: Colors.green[300], icon: Icons.cleaning_services),
  MenuItem(text: 'Reparos', color: Colors.amber[300], icon: Icons.handyman),
  MenuItem(
      text: 'Ar condicionado', color: Colors.blue[300], icon: Icons.ac_unit),
  MenuItem(
      text: 'Lavanderia',
      color: Colors.orange[300],
      icon: Icons.local_laundry_service),
  MenuItem(text: 'Animais', color: Colors.lime[300], icon: Icons.pets),
  MenuItem(text: 'Jardinagem', color: Colors.teal[300], icon: Icons.grass),
];

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
        child: Column(
      children: [
        Expanded(
            child: Container(
          width: size.width,
          child: GridView.extent(
            childAspectRatio: (2 / 2),
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            maxCrossAxisExtent: 400.0,
            children: items
                .map((item) => CategoryItem(
                    text: item.text,
                    color: item.color as Color,
                    icon: item.icon))
                .toList(),
          ),
        ))
      ],
    ));
  }

  Container CategoryItem(
      {required Color color, required String text, required IconData icon}) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(10),
      child: InkWell(
      onTap: () {},
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Ink(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 53, color: Colors.white),
            SizedBox(height: 20),
            Text(
              text,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    ),
    );
  }
}
// }
