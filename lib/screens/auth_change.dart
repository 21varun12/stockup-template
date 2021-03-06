import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockup_template/models/user.dart';
import 'package:stockup_template/screens/authenticate/authenticate.dart';
import 'package:stockup_template/screens/home/home_screen.dart';

class AuthChange extends StatelessWidget {
  // returns home or authenticate widget
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
