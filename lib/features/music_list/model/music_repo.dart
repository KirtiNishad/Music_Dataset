import 'package:music_dataset_virtualization/app/core/network/api_base_client.dart';
import 'package:music_dataset_virtualization/features/music_list/model/music_list_model.dart';

class MusicRepo {
  Future<MusicListModel?> musicList({
    required String query,
    required int index,
    int limit = 50,
  }) async {
    print("object");
    try {
      final response = await ApiBaseClient.client.get(
        "/search/track",
        queryParameters: {"q": query, "index": index, "limit": limit},
      );

      if (response.statusCode == 200) {
        return MusicListModel.fromJson(response.data);
      }
    } catch (e) {
      print("Err =================> $e");
      throw e.toString();
    }
    return null;
  }
}
