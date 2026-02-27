import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_dataset_virtualization/app/core/network/api_base_client.dart';
import 'package:music_dataset_virtualization/features/music_list/bloc/music_bloc.dart';
import 'package:music_dataset_virtualization/features/music_list/view/music_list_screen.dart';

import 'features/music_list/model/music_repo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MusicBloc(),),
      ],
      child: MaterialApp(home: MusicListScreen()),
    );
  }
}