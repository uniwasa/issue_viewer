import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/model/issue.dart';
import 'package:issue_viewer/data/model/issue_tab_state.dart';
import 'package:issue_viewer/data/provider/global_filter_state_provider.dart';

import '../../data/enum/tab_type.dart';
import '../../data/repository/issue_repository.dart';

final issueTabPageControllerProvider = StateNotifierProvider.family<
    IssueTabPageController,
    AsyncValue<IssueTabState>,
    TabType>((ref, tabType) => IssueTabPageController(ref.read, tabType));

class IssueTabPageController extends StateNotifier<AsyncValue<IssueTabState>> {
  IssueTabPageController(this._read, this._tabType)
      : super(const AsyncLoading()) {
    getFirst();
  }

  final Reader _read;
  final TabType _tabType;
  final _perPage = 20;

  Future<void> checkSearchCondition() async {
    // 検索条件が異なれば取得
    final globalFilterState = _read(globalFilterStateProvider);
    final currentFilterState = state.value?.filterState;
    if (globalFilterState != currentFilterState &&
        state != const AsyncLoading<IssueTabState>()) {
      state = const AsyncLoading();
      await getFirst();
    }
  }

  Future<void> getFirst() async {
    await _getIssues(currentIssues: [], nextPage: 1);
  }

  Future<void> getNext() async {
    state.whenData(
      (value) async {
        // 読み込み中か、次がないならなにもしない
        if (value.loadingNext || !value.hasNext) return;

        final nextPage = value.page + 1;
        final currentIssues = value.issues;
        state = AsyncData(value.copyWith(loadingNext: true));
        await _getIssues(currentIssues: currentIssues, nextPage: nextPage);
      },
    );
  }

  Future<void> _getIssues(
      {required List<Issue> currentIssues, required int nextPage}) async {
    final filterState = _read(globalFilterStateProvider);
    await _read(issueRepositoryProvider)
        .getIssues(
            perPage: _perPage,
            page: nextPage,
            onlyOpen: filterState.onlyOpen,
            pastYear: filterState.pastYear,
            sortType: filterState.sortType,
            labels: _tabType.label)
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
                  filterState: filterState,
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
