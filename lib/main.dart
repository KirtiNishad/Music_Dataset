import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_dataset_virtualization/features/music_list/bloc/music_list_bloc/music_bloc.dart';
import 'package:music_dataset_virtualization/features/music_list/bloc/track_detail_bloc/track_detail_bloc.dart';
import 'package:music_dataset_virtualization/features/music_list/model/track_repo.dart';
import 'package:music_dataset_virtualization/features/music_list/view/music_list_screen.dart';

import 'app/core/network/network_info.dart';
import 'features/music_list/model/lyrics_repo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MusicBloc(),),
        BlocProvider(
          create: (_) => TrackDetailsBloc(
            trackRepo: TrackRepo(),
            lyricsRepo: LyricsRepo(),
            networkInfo: NetworkInfo(),
          ),
        )
      ],
      child: MaterialApp(home: MusicListScreen()),
    );
  }
}