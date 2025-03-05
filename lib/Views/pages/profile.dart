
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool? isCheck = false;
  TextEditingController controller = TextEditingController();
  bool isCheckBox = false;
  double isSlider = 0.0;
  String? menuItemSelected;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButton(
              value: menuItemSelected,
              hint: Text('Selected Item'),
              items: [
                DropdownMenuItem(value: 'e1', child: Text('Item 1')),
                DropdownMenuItem(value: 'e2', child: Text('Item 2')),
                DropdownMenuItem(value: 'e3', child: Text('Item 3')),
              ],
              onChanged: (value) {
                setState(() {
                  menuItemSelected = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue, width: 23),
                ),
                suffix: Icon(Icons.text_decrease),
                prefix: Icon(Icons.home),
                hintText: 'please enter the name',
              ),

              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Do you a s tudent'),
                Checkbox(
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value;
                });
              },
              title: Text('check me'),
            ),
            SwitchListTile.adaptive(
              value: isCheckBox,
              title: Text('Are you single'),
              onChanged: (value) {
                setState(() {
                  isCheckBox = !isCheckBox;
                });
              },
            ),
            Slider.adaptive(
              value: isSlider,
              label: 'Slider',
              divisions: 2,
              max: 10.0,
              onChanged: (value) {
                setState(() {
                  isSlider = value;
                });
              },
            ),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print('image was tapped');
              },
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 5),
                    content: Text('data'),
                    behavior: SnackBarBehavior.fixed,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.yellow,
              ),
              child: Text('open snack bar'),
            ),
            Divider(height: 10, endIndent: 200),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('data'),
                      content: Text('Alert title'),
                      actions: [
                        FilledButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('oke'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.yellow,
              ),
              child: Text('open dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
