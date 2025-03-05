import 'package:flutter/material.dart';
import 'package:flutter_application/Views/pages/homePages.dart';
import 'package:flutter_application/Views/pages/profile.dart';
import 'package:flutter_application/Views/pages/settingPages.dart';

import '../../data/value_notifier.dart';
import '../../widgets/navbar_widget.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

List<Widget> pages = [
  homePages(),
  SettingPage(title: 'Setting es'),
  ProfilePage(),
];

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, value, child) {
                return isDarkMode.value
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: 'Setting quer');
                  },
                ),
              );
            },
            icon: Icon(Icons.ac_unit),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu icon is pressed');
          },
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: NavbarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
