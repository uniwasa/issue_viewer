import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/enum/direction_type.dart';
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
      required bool pastYear,
      required SortType sortType,
      required DirectionType directionType,
      String? labels}) {
    final lastYearText = DateTime.now()
        .add(const Duration(days: 365) * -1)
        .toUtc()
        .toIso8601String();
    return _read(issueDataSourceProvider)
        .getIssues(
          perPage: perPage,
          page: page,
          state: onlyOpen ? 'open' : 'all',
          sort: sortType.name,
          direction: directionType.name,
          since: pastYear ? lastYearText : null,
          labels: labels,
        )
        .then((issues) => Result<List<Issue>>.success(issues))
        .catchError((error) => Result<List<Issue>>.failure(error));
  }
}
