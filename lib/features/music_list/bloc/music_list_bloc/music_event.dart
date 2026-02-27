part of 'music_bloc.dart';

@immutable
sealed class MusicEvent {}

class MusicListLoadEvent extends MusicEvent{}
class FetchMoreMusic extends MusicEvent{}