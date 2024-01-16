import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import '../../domain/core/api_end_points.dart';
import '../../domain/downloads/i_downloads_repo.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDowloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      // print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Downloads> downloadsList = [];
        downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        // for (final raw in response.data) {
        //   downloadsList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        // }
        // print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      // print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
