import 'package:countries/app/di/init_di.dart';
import 'package:countries/app/domain/app_builder.dart';
import 'package:countries/app/domain/app_runner.dart';
import 'package:countries/feature/main/domain/repository/country_repository.dart';
import 'package:flutter/material.dart';

class MainAppRunner implements AppRunner {
  final String env;

  const MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    initDi(env);
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    WidgetsFlutterBinding.ensureInitialized();
    await preloadData();
    runApp(appBuilder.buildApp());
  }
}
