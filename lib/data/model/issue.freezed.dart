// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
class _$IssueTearOff {
  const _$IssueTearOff();

  _Issue call(
      {required String title,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _Issue(
      title: title,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Issue fromJson(Map<String, Object?> json) {
    return Issue.fromJson(json);
  }
}

/// @nodoc
const $Issue = _$IssueTearOff();

/// @nodoc
mixin _$Issue {
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call({String title, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call({String title, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Issue(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Issue with DiagnosticableTreeMixin implements _Issue {
  _$_Issue(
      {required this.title, required this.createdAt, required this.updatedAt});

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$$_IssueFromJson(json);

  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Issue(title: $title, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Issue'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Issue &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueToJson(this);
  }
}

abstract class _Issue implements Issue {
  factory _Issue(
      {required String title,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  String get title;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$IssueCopyWith<_Issue> get copyWith => throw _privateConstructorUsedError;
}
