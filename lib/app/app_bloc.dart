import 'package:flutter_modular/flutter_modular.dart';

class AppBloc extends Disposable {
  List<String> frutas = ["maçã", "pêra", "uva", "mamão"];
  //dispose will be called automatically by closing its streams
  @override
  void dispose() {}
}
