import 'package:flutter/material.dart';
import 'package:flutter_modular_teste/app/app_bloc.dart';
import 'package:flutter_modular_teste/app/app_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppBloc appBloc = AppModule.to.get();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: appBloc.frutas.length,
          itemBuilder: (_, int index) {
            return ListTile(
              title: Text(appBloc.frutas[index]),
              onTap: () {
                Navigator.pushNamed(context, '/details/$index');
              },
            );
          },
        ));
  }
}
