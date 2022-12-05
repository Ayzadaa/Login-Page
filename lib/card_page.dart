import 'package:flutter/material.dart';
import 'login_page.dart';

class CardPage extends StatelessWidget {
  CardPage({
    Key? key,
    required this.name,
    required this.profession,
    required this.number,
    required this.email,
    required this.password,
  }) : super(key: key);

  String name;
  String profession;
  String number;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 106, 139, 75),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/logos.png',
            ),
            radius: 50.0,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: const TextStyle(
                fontFamily: 'Pacifico-Regular',
                fontWeight: FontWeight.w400,
                fontSize: 30,
                color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            profession,
            style: const TextStyle(fontSize: 20, color: Color(0xffb2dfdb)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Divider(
              color: Color(0xffb2dfdb),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
            height: 45,
            child: Row(
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Text(
                  number,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
            height: 45,
            child: Row(
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Text(
                  email,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
