import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Help friends and get paid',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
