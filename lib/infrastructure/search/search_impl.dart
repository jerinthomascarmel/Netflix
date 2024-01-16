import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/search/i_search_repo.dart';
import 'package:netflix/domain/search/model/search_resp/search_resp.dart';
import '../../domain/core/api_end_points.dart';

@LazySingleton(as: ISearchRepo)
class SearchImpl implements ISearchRepo {
  @override
  Future<Either<MainFailure, SearchResp>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: <String, dynamic>{
        'query': movieQuery,
      });
      // print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResp.fromJson(response.data);
        // print(result.results);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
