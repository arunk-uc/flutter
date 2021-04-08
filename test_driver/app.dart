//contains the instrunmented version of the app
import 'package:flutter_app/main.dart' as app;
import 'package:flutter_driver/driver_extension.dart';

void main() {
  //Enable extension
  enableFlutterDriverExtension();

  app.main();
}
