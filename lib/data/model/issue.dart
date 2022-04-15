import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Issue({
    required int id,
    required int number,
    required String title,
    required int comments,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
