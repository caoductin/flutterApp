import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  final String text;
  const HeroWidget({super.key, required this.text});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Hero(
              tag: 'hero',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://t4.ftcdn.net/jpg/03/82/68/65/360_F_382686575_B4WT0NbXfzhQU5KnMaTHWZPkH2vTW7fY.jpg',
                  color: Colors.teal,
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
                color: Colors.white60,
              ),
            ),
          ],
        );
      },
    );
  }
}
