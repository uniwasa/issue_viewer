import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../enum/state_type.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Issue({
    required int id,
    required int number,
    required String title,
    required StateType state,
    required int comments,
    required String htmlUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
