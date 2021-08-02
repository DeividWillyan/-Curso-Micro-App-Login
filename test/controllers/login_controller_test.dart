import 'package:flutter_test/flutter_test.dart';
import 'package:micro_app_login/app/controllers/login_controller.dart';

void main() {
  late LoginController _controller;
  late String user;
  late String pass;

  setUpAll(() {
    _controller = LoginController();
    user = 'admin';
    pass = '123';
  });

  test('Should LoginController return true in login method with correct values',
      () async {
    bool result = await _controller.login(user, pass);
    expect(result, true);
  });

  test(
      'Should LoginController return false in login method with invalid values',
      () async {
    pass = '12345';
    bool result = await _controller.login(user, pass);
    expect(result, false);
  });

  // test(
  //     'Should LoginController return exception in login method with null values',
  //     () async {
  //   expect(_controller.login(user, null), throwsA(isA<Exception>()));
  //   expect(_controller.login(null, pass), throwsA(isA<Exception>()));
  //   expect(_controller.login(null, null), throwsA(isA<Exception>()));
  // });
}
