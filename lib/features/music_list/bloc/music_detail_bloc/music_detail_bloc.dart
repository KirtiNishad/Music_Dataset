import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'music_detail_event.dart';
part 'music_detail_state.dart';

class MusicDetailBloc extends Bloc<MusicDetailEvent, MusicDetailState> {
  MusicDetailBloc() : super(MusicDetailInitial()) {
    on<MusicDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
