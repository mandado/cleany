import 'package:cleany/components/GridItem.dart';
import 'package:cleany/components/Header.dart';
import 'package:cleany/components/old_Menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: size.width,
              height: 200,
              child: Center(
                child: Text(
                  'Cleany',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
              ),
            ),
            Image.asset('images/login.png'),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              width: size.width,
              height: 38,
              child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/categories');
              },
              child: Text('Criar Conta'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple.shade400,
              ),
            )
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              width: size.width,
              height: 38,
              child: ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[500],
              ),
            )
            )
          ],
        ));
  }
}
