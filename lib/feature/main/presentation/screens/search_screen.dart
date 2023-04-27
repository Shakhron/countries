import 'package:countries/feature/main/domain/entities/country.dart';
import 'package:countries/feature/main/presentation/bloc/search_bloc.dart';
import 'package:countries/feature/main/presentation/widgets/country_widget.dart';
import 'package:countries/feature/main/presentation/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          extendBodyBehindAppBar: true,
          appBar: _appbar(),
          body: state.when(
            loading: () => const ShimmerWidget(),
            loadedSuccessfull: (countries) => listOfCountries(countries),
            loadedwithError: () => const Center(child: Text('Error')),
          ),
        );
      },
    );
  }

  AppBar _appbar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: PhysicalModel(
            color: Colors.white,
            elevation: 5,
            borderRadius: BorderRadius.circular(25),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'ex. USA',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.tune_rounded)),
            ),
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  Widget listOfCountries(List<Country> countries) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CountryWidget(
              country: countries[index],
            ),
          );
        },
      ),
    );
  }
}
