// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      id: json['id'] as int,
      number: json['number'] as int,
      title: json['title'] as String,
      state: $enumDecode(_$StateTypeEnumMap, json['state']),
      comments: json['comments'] as int,
      htmlUrl: json['html_url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'title': instance.title,
      'state': _$StateTypeEnumMap[instance.state],
      'comments': instance.comments,
      'html_url': instance.htmlUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$StateTypeEnumMap = {
  StateType.open: 'open',
  StateType.closed: 'closed',
};
