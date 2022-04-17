import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:issue_viewer/data/model/filter_state.dart';

import 'issue.dart';

part 'issue_tab_state.freezed.dart';

@freezed
class IssueTabState with _$IssueTabState {
  factory IssueTabState({
    required List<Issue> issues,
    required int page,
    required bool loadingNext,
    required bool hasNext,
    required FilterState filterState,
    required DioError? error,
  }) = _IssueTabState;
}
