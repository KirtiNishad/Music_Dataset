import 'package:dio/dio.dart';
import '../../../app/core/network/api_base_client.dart';

class LyricsRepo {

  Future<String?> getLyrics({
    required String trackName,
    required String artistName,
    required String albumName,
    required num duration,
  }) async {
    try {
      print(trackName);
      print(artistName);
      print(albumName);
      print(duration);
      final response = await ApiBaseClient.client.get(
        "https://lrclib.net/api/get-cached",
        queryParameters: {
          "track_name": trackName.trim(),
          "artist_name": artistName.trim(),
          "album_name": albumName.trim(),
          "duration": duration,
        },
        options: Options(
          validateStatus: (status) => status! < 500,
        ),
      );

      print("res pnse =============> $response");

      final data = response.data;


      if (response.statusCode == 200) {
        return data["plainLyrics"];
      }else{
        throw Exception("Failed to load track");
      }
    } catch (e) {
      throw Exception("Failed to load lyrics");
    }
  }

  String _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionError:
        return "No Internet Connection";
      case DioExceptionType.connectionTimeout:
        return "Connection timeout";
      case DioExceptionType.receiveTimeout:
        return "Server timeout";
      default:
        return "Failed to load lyrics";
    }
  }
}