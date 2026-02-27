part of 'track_detail_bloc.dart';

@immutable
sealed class TrackDetailsState {}

class TrackDetailsInitial extends TrackDetailsState {}

class TrackDetailsLoading extends TrackDetailsState {}

class TrackDetailsSuccess extends TrackDetailsState {
  final TrackDetailModel track;
  final String? lyrics;
  final bool lyricsFailed;

  TrackDetailsSuccess({
    required this.track,
    this.lyrics,
    this.lyricsFailed = false,
  });
}

class TrackDetailsError extends TrackDetailsState {
  final String message;

  TrackDetailsError(this.message);
}