import 'package:flutter/material.dart';
import 'package:music_dataset_virtualization/features/music_list/view/music_detail_screen.dart';

import '../../model/music_list_model.dart';

class MusicTile extends StatelessWidget {
  final MusicDetail track;

  const MusicTile({super.key, required this.track});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: track.album?.coverSmall != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                track.album!.coverSmall!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            )
          : const Icon(Icons.music_note),

      title: Text(
        track.title ?? "Unknown Title",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),

      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(track.artist?.name ?? "Unknown Artist"),
          Text("Track ID: ${track.id}", style: const TextStyle(fontSize: 12)),
        ],
      ),

      trailing: const Icon(Icons.arrow_forward_ios, size: 16),

      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => TrackDetailsScreen(trackId: track.id,)));
      },
    );
  }
}
