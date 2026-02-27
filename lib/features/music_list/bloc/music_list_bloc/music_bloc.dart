import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_dataset_virtualization/features/music_list/model/music_list_model.dart';
import 'package:music_dataset_virtualization/features/music_list/model/music_repo.dart';

import '../../../../app/core/network/network_info.dart';

part 'music_event.dart';

part 'music_state.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  int currentIndex = 0;
  final int limit = 50;
  bool isFetching = false;

  MusicBloc() : super(MusicInitial()) {
    on<MusicListLoadEvent>((event, emit) async {
      emit(MusicLoading());

      final isConnected = await NetworkInfo().isConnected();

      if (isConnected) {
        try {
          currentIndex = 0;

          final data = await MusicRepo().musicList(
            query: "a",
            index: currentIndex,
            limit: limit,
          );

          emit(MusicSuccess(tracks: data?.data ?? [], total: data?.total ?? 0));
        } catch (e) {
          emit(MusicError(e.toString()));
        }
      }else{
        emit(MusicError("No Internet Connectivity"));
      }
    });

    on<FetchMoreMusic>((event, emit) async {
      if (isFetching || state is! MusicSuccess) return;

      final currentState = state as MusicSuccess;

      if (currentState.tracks.length >= currentState.total) return;

      isFetching = true;

      emit(currentState.copyWith(isLoadingMore: true));

      try {
        final nextIndex = currentIndex + limit;

        final response = await MusicRepo().musicList(
          query: "a",
          index: nextIndex,
          limit: limit,
        );

        currentIndex = nextIndex;

        final updatedList = [...currentState.tracks, ...?response?.data];

        emit(
          currentState.copyWith(
            tracks: updatedList,
            total: response?.total ?? currentState.total,
            isLoadingMore: false,
            hasReachedEnd: updatedList.length >= (response?.total ?? 0),
          ),
        );
      } catch (e) {
        emit(currentState.copyWith(isLoadingMore: false));
      }

      isFetching = false;
    });
  }
}
