import 'package:flutter/material.dart';
import 'package:teamsnap/app/dashboard_page.dart';

void main(List<String> args) {
  runApp(const TeamSnap());
}

class TeamSnap extends StatelessWidget {
  const TeamSnap({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dashboard(),
    );
  }
}
