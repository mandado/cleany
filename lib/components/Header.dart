import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 250,
      padding: EdgeInsets.fromLTRB(100, 80, 100, 0),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Boa tarde, Lays',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400]),
          ),
          const SizedBox(height: 20),
          Text(
            'Como posso ajudar você hoje ?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
          )
        ],
      ),
    );
  }
}
