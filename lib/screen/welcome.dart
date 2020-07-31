import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {

  String name;

  Welcome({
    this.name
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome'
      ),
    );
  }
}
