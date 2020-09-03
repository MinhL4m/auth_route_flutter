import 'package:flutter/material.dart';
import 'package:inherited_research/credentical_bloc.dart';
import 'package:inherited_research/home.dart';
import 'package:inherited_research/sign_in.dart';

void main() => runApp(FirstPage());

class FirstPage extends StatelessWidget {
  CredentialBloc _bloc = CredentialBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          print(snapshot.data);
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data == null) {
              return SignIn();
            } else {
              return Home();
            }
          } else {
            return Scaffold(
              body: Center(
                child: Text('Loading'),
              ),
            );
          }
        },
      ),
    );
  }
}
