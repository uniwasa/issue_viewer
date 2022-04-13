import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/issue.dart';
import '../model/result.dart';
import '../remote/issue_data_source.dart';

final issueRepositoryProvider = Provider((ref) => IssueRepository(ref.read));

class IssueRepository {
  IssueRepository(this._read);

  final Reader _read;

  Future<Result<List<Issue>>> getIssues() {
    return _read(issueDataSourceProvider)
        .getIssues()
        .then((issues) => Result<List<Issue>>.success(issues))
        .catchError((error) => Result<List<Issue>>.failure(error));
  }
}
