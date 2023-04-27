import 'package:countries/app/di/init_di.dart';
import 'package:countries/app/domain/app_builder.dart';
import 'package:countries/app/themes/theme.dart';
import 'package:countries/feature/main/domain/repository/country_repository.dart';
import 'package:countries/feature/main/presentation/bloc/search_bloc.dart';
import 'package:countries/feature/main/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return MaterialApp(
      theme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => SearchBloc(locator.get<CountryRepository>())
          ..add(const SearchEvent.started()),
        child: const SearchScreen(),
      ),
    );
  }
}
