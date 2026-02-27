part of 'track_detail_bloc.dart';

@immutable
sealed class TrackDetailsEvent {}

class FetchTrackDetails extends TrackDetailsEvent {
  final int? trackId;

  FetchTrackDetails(this.trackId);
}