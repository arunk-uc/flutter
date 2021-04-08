import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/side_menu.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherExample extends StatelessWidget {
  const UrlLauncherExample({Key key}) : super(key: key);

  void openbrowser() async {
    print('lauching browser');
    await canLaunch('https://flutter.dev/')
        ? await launch('https://flutter.dev/')
        : print('Could not launch https://flutter.dev/');
  } //openbrowser

  void makeACall() async {
    const callUrl = 'tel:+91 8050545270';
    await canLaunch(callUrl)
        ? await launch(callUrl)
        : print('Could not launch $callUrl');
  } //makeACall

  void sendSms() async {
    const smsUrl = 'sms:8050545270';
    await canLaunch(smsUrl)
        ? await launch(smsUrl)
        : print('Could not launch $smsUrl');
  } //sendSms

  sendMail() async {
    const uri =
        'mailto:arunk@unicourt.com?subject=Greetings&body=Hello%20World';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      print('Could not launch $uri');
    }
  } //sendMail

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Url Launcher Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              openbrowser();
            },
            child: Text('Open browser'),
          ),
          TextButton(
            onPressed: () {
              sendMail();
            },
            child: Text('Send a mail'),
          ),
          TextButton(
            onPressed: () {
              makeACall();
            },
            child: Text('Make a call'),
          ),
          TextButton(
            onPressed: () {
              sendSms();
            },
            child: Text('Send a message'),
          ),
        ],
      ),
    );
  }
}
