import 'package:flutter/material.dart';
import 'package:micro_commons_design_system/micro_commons_design_system.dart';
import 'package:micro_core/micro_core.dart';

class LoginPage extends StatelessWidget {
  String _appName = const String.fromEnvironment('DEFINE_APP_NAME');
  String _suffixName = const String.fromEnvironment('DEFINE_SUFFIX_NAME');
  String _server = const String.fromEnvironment('DEFINE_SERVER');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(_appName, style: TextStyle(fontSize: 20)),
            Text(_suffixName, style: TextStyle(fontSize: 20)),
            Text(_server, style: TextStyle(fontSize: 20)),
            CustomButtonWidget(
              text: 'goToHome',
              onPressed: () => navigatorKey.currentState?.pushNamed('/home'),
            ),
          ],
        ),
      ),
    );
  }
}
