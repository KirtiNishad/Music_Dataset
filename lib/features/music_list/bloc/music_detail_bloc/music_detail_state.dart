part of 'music_detail_bloc.dart';

@immutable
sealed class MusicDetailState {}

final class MusicDetailInitial extends MusicDetailState {}
final class MusicDetailLoading extends MusicDetailState {}
final class MusicDetailSuccess extends MusicDetailState {}
final class MusicDetailError extends MusicDetailState {}
