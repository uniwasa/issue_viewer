import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/model/filter_state.dart';
import 'package:issue_viewer/data/model/issue.dart';
import 'package:issue_viewer/data/model/issue_tab_state.dart';
import 'package:issue_viewer/data/provider/global_filter_state_provider.dart';

import '../../data/enum/tab_type.dart';
import '../../data/model/result.dart';
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

  Future<void> getFirst() async {
    final filterState = _read(globalFilterStateProvider);
    final result = await _getIssues(filterState: filterState, page: 1);
    result.when(
      success: (issues) {
        // 成功の場合
        state = AsyncData(
          IssueTabState(
            issues: issues,
            page: 1,
            loadingNext: false,
            hasNext: _hasNext(issues),
            filterState: filterState,
          ),
        );
      },
      failure: (error) {
        // エラーの場合
        print(error);
      },
    );
  }

  Future<void> getNext() async {
    state.whenData(
      (value) async {
        // 次を読み込み中か、次がないならなにもしない
        if (value.loadingNext || !value.hasNext) return;
        state = AsyncData(value.copyWith(loadingNext: true));

        final nextPage = value.page + 1;
        final currentIssues = value.issues;
        final filterState = _read(globalFilterStateProvider);

        final result =
            await _getIssues(filterState: filterState, page: nextPage);
        result.when(
          success: (nextIssues) {
            // 成功の場合
            state = AsyncData(
              IssueTabState(
                issues: currentIssues + nextIssues,
                page: nextPage,
                loadingNext: false,
                hasNext: _hasNext(nextIssues),
                filterState: filterState,
              ),
            );
          },
          failure: (error) {
            // エラーの場合
            print(error);
          },
        );
      },
    );
  }

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

  Future<Result<List<Issue>>> _getIssues(
      {required FilterState filterState, required int page}) async {
    final result = await _read(issueRepositoryProvider).getIssues(
        perPage: _perPage,
        page: page,
        onlyOpen: filterState.onlyOpen,
        pastYear: filterState.pastYear,
        sortType: filterState.sortType,
        labels: _tabType.label);
    return result;
  }

  // 次があるか判定
  bool _hasNext(List<Issue> issues) => issues.length >= _perPage;
}
