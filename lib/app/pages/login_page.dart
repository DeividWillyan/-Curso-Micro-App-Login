import 'package:flutter/material.dart';
import 'package:micro_commons_design_system/micro_commons_design_system.dart';
import 'package:micro_core/micro_core.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: CustomButtonWidget(
          text: 'goToHome',
          onPressed: () => navigatorKey.currentState.pushNamed('/home'),
        ),
      ),
    );
  }
}
