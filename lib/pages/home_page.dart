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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(24),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://picsum.photos/id/237/200/300')),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.5),
                                blurRadius: 10,
                                offset: Offset(0, 0))
                          ]),
                    )
                  ],
                ),
              ),
              const Header(),
              const Menu()
            ],
          ),
        ));
  }
}
