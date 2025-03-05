import 'package:flutter/material.dart';
import 'package:flutter_application/Views/pages/homePages.dart';
import 'package:flutter_application/Views/pages/settingPages.dart';
import 'package:flutter_application/data/constant.dart';
import 'package:flutter_application/widgets/hero_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String titleApp = 'Sign up';

  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String username = 'Tin';
  String passwrod = '123';

  @override
  void dispose() {
    controllerUsername.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up', style: KTextStyle.titleTextStyle)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeroWidget(text: titleApp),
            Spacer(),
            TextField(
              controller: controllerUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'Please enter the UserName',
                label: Text('User name'),
              ),
              onEditingComplete: () {},
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                label: Text('Password'),
                hintText: 'Please enter the password',
              ),
              onEditingComplete: () {},
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                checkPassword();
              },
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  void checkPassword() {
    if (controllerPassword.text == passwrod &&
        controllerUsername.text == username) {
      print('this function is trigger');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SettingPage(title: "Setting");
          },
        ),
      );
    }
  }
}
