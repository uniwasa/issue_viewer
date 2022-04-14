import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/enum/sort_type.dart';

import '../../data/model/filter_state.dart';
import '../../data/provider/global_filter_state_provider.dart';

final filterSheetControllerProvider = StateNotifierProvider
    .autoDispose<FilterSheetController, FilterState>((ref) =>
        FilterSheetController(ref.read, ref.watch(globalFilterStateProvider)));

class FilterSheetController extends StateNotifier<FilterState> {
  FilterSheetController(this._read, FilterState state) : super(state);

  final Reader _read;

  void handleRadio(SortType sortType) {
    state = state.copyWith(sortType: sortType);
  }

  void handleOnlyOpen(bool onlyOpen) {
    state = state.copyWith(onlyOpen: onlyOpen);
  }

  void handlePastYear(bool pastYear) {
    state = state.copyWith(pastYear: pastYear);
  }

  void save() {
    _read(globalFilterStateProvider.notifier).state = state;
  }
}
