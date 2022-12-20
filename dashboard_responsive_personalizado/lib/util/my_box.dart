import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final int cuadros;
  const MyBox({Key? key, required this.cuadros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../images/pic${cuadros + 1}.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[400],
          ),
        ),
    );
  }
}