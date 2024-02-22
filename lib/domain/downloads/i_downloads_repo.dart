import 'package:dartz/dartz.dart';
import 'package:movie_db/domain/core/failures/main_failures.dart';
import 'package:movie_db/domain/downloads/model/downloads.dart';

abstract interface class IDownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages();
}
