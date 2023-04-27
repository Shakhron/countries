import 'dart:developer';

import 'package:countries/feature/main/domain/entities/country.dart';
import 'package:countries/feature/main/domain/repository/country_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CountryRepository repo;
  SearchBloc(this.repo) : super(const _Loading()) {
    on<SearchEvent>((event, emit) {});
    on<_$Started>((event, emit) async {
      try {
        final response = await repo.getAll();
        emit(SearchState.loadedSuccessfull(response));
      } catch (e) {
        log(e.toString());
        emit(const SearchState.loadedwithError());
      }
    });
  }
}

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = Started;
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loadedSuccessfull(List<Country> countries) =
      _LoadedSuccessfull;
  const factory SearchState.loadedwithError() = _LoadedWithError;
}
