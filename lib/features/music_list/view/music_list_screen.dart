import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_dataset_virtualization/features/music_list/bloc/music_bloc.dart';
import 'package:music_dataset_virtualization/features/music_list/model/music_list_model.dart';
import 'package:music_dataset_virtualization/features/music_list/view/widget/music_tile.dart';

class MusicListScreen extends StatefulWidget {
  const MusicListScreen({super.key});

  @override
  State<MusicListScreen> createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<MusicBloc>().add(MusicListLoadEvent());

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
      context.read<MusicBloc>().add(FetchMoreMusic());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Music Library"), centerTitle: true),

      body: BlocBuilder<MusicBloc, MusicState>(
        builder: (context, state) {
          if (state is MusicLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MusicSuccess) {
            final tracks = state.tracks;

            return ListView.builder(
              controller: _scrollController,
              itemCount: tracks.length + 1,
              itemBuilder: (context, index) {
                if (index < tracks.length) {
                  final track = tracks[index];
                  return MusicTile(track: track);
                }

                if (state.isLoadingMore) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (state.hasReachedEnd) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: Text("No more tracks")),
                  );
                }

                return const SizedBox.shrink();
              },
            );
          } else if (state is MusicError) {
            return Center(
              child: Text(state.msg, style: const TextStyle(fontSize: 16)),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
