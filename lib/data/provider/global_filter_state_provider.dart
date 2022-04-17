import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:issue_viewer/data/enum/direction_type.dart';
import 'package:issue_viewer/data/enum/sort_type.dart';
import 'package:issue_viewer/data/model/filter_state.dart';

final globalFilterStateProvider = StateProvider<FilterState>(
  (ref) => FilterState(
    onlyOpen: true,
    pastYear: false,
    sortType: SortType.created,
    directionType: DirectionType.desc,
  ),
);
