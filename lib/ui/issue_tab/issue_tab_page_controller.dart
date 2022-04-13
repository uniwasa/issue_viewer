import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/model/issue.dart';
import 'package:issue_viewer/data/model/issue_tab_state.dart';

import '../../data/enum/tab_type.dart';
import '../../data/repository/issue_repository.dart';

final issueTabPageControllerProvider = StateNotifierProvider.family<
    IssueTabPageController,
    AsyncValue<IssueTabState>,
    TabType>((ref, tabType) => IssueTabPageController(ref.read, tabType));

class IssueTabPageController extends StateNotifier<AsyncValue<IssueTabState>> {
  IssueTabPageController(this._read, this._tabType)
      : super(const AsyncLoading()) {
    init();
  }

  final Reader _read;
  final TabType _tabType;
  final _perPage = 20;

  void init() {
    _getIssues([], 1);
  }

  Future<void> getNext() async {
    state.whenData(
      (value) {
        // 読み込み中か、次がないならなにもしない
        if (value.loadingNext || !value.hasNext) return;

        final nextPage = value.page + 1;
        final currentIssues = value.issues;
        state = AsyncData(value.copyWith(loadingNext: true));
        print('gettingNext');
        _getIssues(currentIssues, nextPage);
      },
    );
  }

  Future<void> _getIssues(List<Issue> currentIssues, int nextPage) async {
    _read(issueRepositoryProvider)
        .getIssues(perPage: _perPage, page: nextPage, labels: _tabType.label)
        .then(
          (result) => result.when(
            success: (nextIssues) {
              final bool hasNext = nextIssues.length >= _perPage;
              state = AsyncData(
                IssueTabState(
                  issues: currentIssues + nextIssues,
                  page: nextPage,
                  loadingNext: false,
                  hasNext: hasNext,
                ),
              );
            },
            failure: (error) {
              print(error);
            },
          ),
        );
  }
}