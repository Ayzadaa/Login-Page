import 'package:flutter/material.dart';
import 'card_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  String profession = '';
  String number = '';
  String email = '';
  String password = '';
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 106, 139, 75),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: TextField(
              onChanged: (String value) {
                name = value;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Write your name',
                labelText: 'Name',
                hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.account_box_rounded,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: TextField(
              onChanged: (String value) {
                profession = value;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Write your profession',
                labelText: 'Profession',
                hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.account_box_outlined,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: TextField(
              onChanged: (String value) {
                number = value;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Write your phone number',
                labelText: 'Phone number',
                hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: TextField(
              onChanged: (String value) {
                email = value;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'username@mail.com',
                labelText: 'Email',
                hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 188, 188).withOpacity(0.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              onChanged: (String value) {
                password = value;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Password',
                hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                gradient:
                    const LinearGradient(colors: [Colors.blue, Colors.green])),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _flag
                    ? const Color.fromARGB(255, 191, 206, 61)
                    : const Color.fromARGB(
                        255, 133, 197, 29), // This is what you need!
              ),
              onPressed: () {
                setState(() => _flag = !_flag);

                if (email == '' && password == '') {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Please, write login and password!"),
                  ));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardPage(
                                name: name,
                                profession: profession,
                                number: number,
                                email: email,
                                password: password,
                              )));
                }
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.white))),
            child: const Text(
              'Create New Account?',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Icon(
            Icons.fingerprint,
            size: 60,
            color: Colors.lime,
          )
        ]),
      ),
    );
  }
}
