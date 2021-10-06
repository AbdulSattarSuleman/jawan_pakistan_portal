import 'package:flutter/material.dart';
import 'package:user_portal/constant.dart';
import 'package:user_portal/screens/login_screen.dart';
import 'package:user_portal/screens/register_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFF31a24c),
          title: const Text("User Portal"),
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5.0,
              tabs: [
                Tab(
                  child: Text('Register User'),
                ),
                Tab(
                  child: Text('Login User'),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            RegisterScreen(),
            LoginScreen(),
          ],
        ),
      ),
    );
  }
}
