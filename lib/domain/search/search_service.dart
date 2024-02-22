import 'package:dartz/dartz.dart';
import 'package:movie_db/domain/core/failures/main_failures.dart';
import 'package:movie_db/domain/search/model/search_resp.dart';

abstract interface class SearchService {
  Future<Either<MainFailures, SearchResp>> searchMovie(
      {required String movieQuery});
}
