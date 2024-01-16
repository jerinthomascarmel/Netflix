import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/search/i_search_repo.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadService;
  final ISearchRepo _searchService;
  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }
      //idle state
      emit(const SearchState(
          searchResultList: [], idleList: [], isLoading: true, isError: false));

      //get trending
      final result = await _downloadService.getDowloadsImages();
      //show to ui
      emit(result.fold(
          (l) => const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true),
          (r) => SearchState(
              searchResultList: [],
              idleList: r,
              isLoading: false,
              isError: false)));
    });

    //search state
    on<SearchMovies>((event, emit) async {
      //search movie
      final result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      emit(result.fold(
          (l) => const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true),
          (r) => state.copyWith(searchResultList: r.results ?? [])));
      //show to ui
    });
  }
}
