import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_db/domain/core/api_end_points.dart';
import 'package:movie_db/domain/core/failures/main_failures.dart';
import 'package:movie_db/domain/downloads/i_downloads_repo.dart';
import 'package:movie_db/domain/downloads/model/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadList = (response.data['results'] as List)
            .map((e) => Downloads.fromJson(e))
            .toList();
        return right(downloadList);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString(), name: "DownloadRepository-getDownloadsImages");
      return left(const MainFailures.clientFailure());
    }
  }
}
