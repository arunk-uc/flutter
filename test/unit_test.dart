// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_app/testing_example/Login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('empty username return error string', () {
    final result = UsernameFieldValidator.validate('');
    expect(result, 'Username should not be empty');
  });

  test('non-empty Username returns success', () {
    final result = UsernameFieldValidator.validate('Hello');
    expect(result, 'success');
  });

  test('empty password return error string', () {
    final result = PasswordFieldValidator.validate('');
    expect(result, 'Password should not be empty');
  });

  test('non empty password return success', () {
    final result = PasswordFieldValidator.validate('password');
    expect(result, 'success');
  });
}
