import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/model/issue.dart';

import '../../data/enum/tab_type.dart';
import '../../data/repository/issue_repository.dart';

final issueTabPageControllerProvider = StateNotifierProvider.family<
    IssueTabPageController,
    AsyncValue<List<Issue>>,
    TabType>((ref, tabType) => IssueTabPageController(ref.read, tabType));

class IssueTabPageController extends StateNotifier<AsyncValue<List<Issue>>> {
  IssueTabPageController(this._read, this._tabType)
      : super(const AsyncLoading()) {
    init();
  }

  final Reader _read;
  final TabType _tabType;

  void init() {
    _read(issueRepositoryProvider)
        .getIssues(labels: _tabType.label)
        .then((result) => result.when(
            success: (issues) {
              state = AsyncData(issues);
            },
            failure: (error) {}));
  }
}
