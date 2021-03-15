import 'package:flutter/material.dart';

import '../components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('My Settings'),
      ),
    );
  }
}
