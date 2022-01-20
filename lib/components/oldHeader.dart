import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: 60,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [homeText(), address()],
          ),
        ]));
  }

  Text addressTitle({required Color? color, required String title}) {
    return Text(
      title,
      style: TextStyle(
          color: color, height: 1, fontSize: 10, fontWeight: FontWeight.w500),
    );
  }

  Column address() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        addressTitle(
            color: Colors.black, title: 'Santa clara, 363, Costa Carvalho'),
        const SizedBox(
          height: 2.5,
        ),
        addressTitle(color: Colors.grey[500], title: 'Juiz de fora, MG'),
      ],
    );
  }

  Text homeText() {
    return const Text(
      'Home',
      style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          height: 1,
          fontWeight: FontWeight.w900),
    );
  }
}
