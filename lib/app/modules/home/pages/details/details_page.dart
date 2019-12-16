import 'package:flutter/material.dart';
import 'package:flutter_modular_teste/app/app_bloc.dart';
import 'package:flutter_modular_teste/app/app_module.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final int id;
  const DetailsPage({Key key, this.title = "Details", this.id}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Text(AppModule.to.get<AppBloc>().frutas[widget.id]),
        ));
  }
}
