import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './app_widget.dart';
import './screens/form/form_screen.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => FormScreen()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
