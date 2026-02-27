part of 'music_detail_bloc.dart';

@immutable
sealed class MusicDetailEvent {}

class MusicDetailLoaded extends MusicDetailEvent{}