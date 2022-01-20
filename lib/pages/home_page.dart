import 'package:cleany/components/GridItem.dart';
import 'package:cleany/components/Header.dart';
import 'package:cleany/components/old_Menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            const Menu()
          ],
        ));
  }
}