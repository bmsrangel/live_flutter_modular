import 'package:flutter_modular_teste/app/modules/home/pages/details/details_bloc.dart';
import 'package:flutter_modular_teste/app/modules/home/home_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_teste/app/modules/home/home_page.dart';
import 'package:flutter_modular_teste/app/modules/home/pages/details/details_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsBloc()),
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router(
          '/details/:id',
          child: (_, args) => DetailsPage(
            id: args.params["id"],
          ),
          transition: TransitionType.rotate,
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
