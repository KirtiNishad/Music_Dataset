part of 'music_bloc.dart';

@immutable
sealed class MusicState {}

class MusicInitial extends MusicState {}

class MusicLoading extends MusicState {}

class MusicSuccess extends MusicState {
  final List<MusicDetail> tracks;
  final int total;
  final bool isLoadingMore;
  final bool hasReachedEnd;

  MusicSuccess({
    required this.tracks,
    required this.total,
    this.isLoadingMore = false,
    this.hasReachedEnd = false,
  });

  MusicSuccess copyWith({
    List<MusicDetail>? tracks,
    int? total,
    bool? isLoadingMore,
    bool? hasReachedEnd,
  }) {
    return MusicSuccess(
      tracks: tracks ?? this.tracks,
      total: total ?? this.total,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasReachedEnd: hasReachedEnd ?? this.hasReachedEnd,
    );
  }
}

final class MusicError extends MusicState {
  final String msg;
  MusicError(this.msg);
}
