import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_dataset_virtualization/features/music_list/model/lyrics_repo.dart';

import '../../../../app/core/network/network_info.dart';
import '../../model/music_detail_model.dart';
import '../../model/track_repo.dart';

part 'track_detail_event.dart';

part 'track_detail_state.dart';

class TrackDetailsBloc extends Bloc<TrackDetailsEvent, TrackDetailsState> {
  final TrackRepo trackRepo;
  final LyricsRepo lyricsRepo;
  final NetworkInfo networkInfo;

  TrackDetailsBloc({
    required this.trackRepo,
    required this.lyricsRepo,
    required this.networkInfo,
  }) : super(TrackDetailsInitial()) {
    on<FetchTrackDetails>(_loadDetails);
  }

  Future<void> _loadDetails(
    FetchTrackDetails event,
    Emitter<TrackDetailsState> emit,
  ) async {
    final connected = await networkInfo.isConnected();

    if (!connected) {
      emit(TrackDetailsError("No Internet Connection"));
      return;
    }

    try {
      emit(TrackDetailsLoading());

      final track = await trackRepo.getTrackDetails(event.trackId);

      String? lyrics;
      bool lyricsFailed = false;

      try {
        lyrics = await lyricsRepo.getLyrics(
          trackName: track.title ?? "",
          artistName: track.artist?.name ?? "",
          albumName: track.album?.title ?? "",
          duration: track.duration ?? 0,
        );
      } catch (_) {
        lyricsFailed = true;
      }

      emit(
        TrackDetailsSuccess(
          track: track,
          lyrics: lyrics,
          lyricsFailed: lyricsFailed,
        ),
      );
    } catch (e) {
      emit(TrackDetailsError(e.toString()));
    }
  }
}
