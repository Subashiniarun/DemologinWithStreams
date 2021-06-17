import 'package:flutter/material.dart';
import 'auth provider.dart';
import 'authWithStreams.dart';

class Home extends StatelessWidget {

  Future<void> _signOut(BuildContext context) async {
    try {
      final BaseAuth auth = AuthProvider
          .of(context)
          .auth;
      await auth.signOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome')

      ),
      body: Container(
        child: Center(child: FlatButton(
          color: Colors.blue,
          child: Text('Logout',
              style: TextStyle(fontSize: 17.0, color: Colors.white)),
          onPressed: () => _signOut(context),
        )),
      ),
    );
  }
}
