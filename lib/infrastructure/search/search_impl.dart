import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_db/domain/core/failures/main_failures.dart';
import 'package:movie_db/domain/search/model/search_resp.dart';
import 'package:movie_db/domain/search/search_service.dart';

import '../../domain/core/api_end_points.dart';
@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailures, SearchResp>> searchMovie(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: {'query':movieQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResp.fromJson(response.data);
        return right(result);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString(), name: "SearchImpl-searchMovie");
      return left(const MainFailures.clientFailure());
    }
  }
}
