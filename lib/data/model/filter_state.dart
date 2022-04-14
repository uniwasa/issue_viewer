import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:issue_viewer/data/enum/sort_type.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  factory FilterState({
    required bool onlyOpen,
    required bool pastYear,
    required SortType sortType,
  }) = _FilterState;
}
