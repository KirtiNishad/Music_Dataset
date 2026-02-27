import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/track_detail_bloc/track_detail_bloc.dart';

class TrackDetailsScreen extends StatefulWidget {
  final int? trackId;

  const TrackDetailsScreen({super.key, required this.trackId});

  @override
  State<TrackDetailsScreen> createState() => _TrackDetailsScreenState();
}

class _TrackDetailsScreenState extends State<TrackDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<TrackDetailsBloc>().add(FetchTrackDetails(widget.trackId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Track Details")),
      body: BlocBuilder<TrackDetailsBloc, TrackDetailsState>(
        builder: (context, state) {
          if (state is TrackDetailsLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is TrackDetailsSuccess) {
            final track = state.track;

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    track.title ?? "",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text("Artist: ${track.artist?.name ?? ""}"),

                  Text("Album: ${track.album?.title ?? ""}"),

                  Text("Duration: ${track.duration}s"),

                  const SizedBox(height: 20),

                  Image.network(track.album?.coverMedium ?? "", height: 200),

                  BlocBuilder<TrackDetailsBloc, TrackDetailsState>(
                    builder: (context, state) {
                      if (state is TrackDetailsLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (state is TrackDetailsSuccess) {
                        return Column(
                          children: [
                            Text(state.track.title ?? ""),

                            if (state.lyricsFailed)
                              const Text("Lyrics not available"),

                            if (state.lyrics != null) Text(state.lyrics!),
                          ],
                        );
                      }

                      if (state is TrackDetailsError) {
                        return Center(child: Text(state.message));
                      }

                      return const SizedBox();
                    },
                  ),
                ],
              ),
            );
          }
          if (state is TrackDetailsError) {
            return Center(child: Text(state.message));
          }

          return const SizedBox();
        },
      ),
    );
  }
}
