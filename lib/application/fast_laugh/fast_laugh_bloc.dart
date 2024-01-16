import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

const videoList = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final IDownloadsRepo downloadService;
  FastLaughBloc(this.downloadService) : super(FastLaughState.initial()) {
    on<FastLaughEvent>((event, emit) async {
      emit(
          const FastLaughState(imageList: [], isLoading: true, isError: false));

      final imagelist = await downloadService.getDowloadsImages();
      emit(imagelist.fold(
          (l) => state.copyWith(isLoading: false, isError: true),
          (r) =>
              state.copyWith(isLoading: false, isError: false, imageList: r)));
    });
  }
}
