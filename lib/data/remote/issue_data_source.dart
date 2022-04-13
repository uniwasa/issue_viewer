import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../model/issue.dart';
import '../provider/dio_provider.dart';

part 'issue_data_source.g.dart';

final issueDataSourceProvider =
    Provider((ref) => IssueDataSource.withReader(ref.read));

@RestApi(baseUrl: "https://api.github.com/repos/flutter/flutter/")
abstract class IssueDataSource {
  factory IssueDataSource.withReader(Reader read) =>
      IssueDataSource(read(dioProvider));
  factory IssueDataSource(Dio dio, {String baseUrl}) = _IssueDataSource;

  @GET("/issues")
  Future<List<Issue>> getIssues({
    @Query("per_page") int perPage = 30,
    @Query("labels") String? labels,
  });
}
