import 'package:flutter/material.dart';
import 'package:flutter_stick_game/game.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        alignment: Alignment.center,
        child: Card(
          elevation: 10,
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    icon: Icon(Icons.phone_android),
                    labelText: "请输入手机号",
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    icon: Icon(Icons.password),
                    labelText: "请输入密码",
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      runApp(Game());
                    },
                    child: const Text("登录"))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
