import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/enum/sort_type.dart';

import '../model/issue.dart';
import '../model/result.dart';
import '../remote/issue_data_source.dart';

final issueRepositoryProvider = Provider((ref) => IssueRepository(ref.read));

class IssueRepository {
  IssueRepository(this._read);

  final Reader _read;

  Future<Result<List<Issue>>> getIssues(
      {required int perPage,
      required int page,
      required bool onlyOpen,
      required SortType sortType,
      String? labels}) {
    return _read(issueDataSourceProvider)
        .getIssues(
          perPage: perPage,
          page: page,
          state: onlyOpen ? 'open' : 'all',
          sort: sortType.sort,
          direction: sortType.direction,
          labels: labels,
        )
        .then((issues) => Result<List<Issue>>.success(issues))
        .catchError((error) => Result<List<Issue>>.failure(error));
  }
}
