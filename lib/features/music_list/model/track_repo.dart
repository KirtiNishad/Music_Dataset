import 'package:dio/dio.dart';

import '../../../app/core/network/api_base_client.dart';
import 'music_detail_model.dart';

class TrackRepo {
  Future<TrackDetailModel> getTrackDetails(int? trackId) async {
    try {
      final response = await ApiBaseClient.client.get(
        "/track/$trackId",
      );

      if (response.statusCode == 200) {
        return TrackDetailModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load track");
      }
    } on DioException catch (e) {
      throw _handleError(e);
    } catch (e) {
      throw Exception(e.toString());
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