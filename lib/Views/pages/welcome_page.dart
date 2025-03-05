import 'package:flutter/material.dart';
import 'package:flutter_application/Views/pages/signup.dart';
import 'package:flutter_application/Views/pages/widget_tree.dart';
import 'package:flutter_application/routes.dart';
import 'package:flutter_application/widgets/customButton.dart';
import 'package:flutter_application/data/constant.dart';
import 'package:flutter_application/data/value_notifier.dart';
import 'package:flutter_application/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/donut.json'),
              Text('Welcome to my Screen', style: KTextStyle.titleTextStyle),
              Spacer(),
              CustomButton(
                text: 'Login',
                color: Theme.of(context).colorScheme.primary,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WidgetTree();
                      },
                    ),
                  );
                  //   Navigator.pushNamed(context, AppRoutes.home);
                },
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Sign up',
                color: Theme.of(context).colorScheme.primary,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Signup();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }
}
