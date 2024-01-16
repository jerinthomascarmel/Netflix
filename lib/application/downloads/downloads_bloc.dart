import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/i_downloads_repo.dart';
import '../../domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<DownloadsEvent>((event, emit) async {
      if (state.downloads != null && state.downloads!.isNotEmpty) {
        emit(state);
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        failureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await downloadsRepo.getDowloadsImages();
      // print(downloadsOption.toString());
      emit(downloadsOption.fold(
          (l) => state.copyWith(
              isLoading: false, failureOrSuccessOption: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false,
              failureOrSuccessOption: Some(right(r)),
              downloads: r)));
    });
  }
}
