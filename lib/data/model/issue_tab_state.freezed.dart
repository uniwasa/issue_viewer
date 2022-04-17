// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_tab_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueTabStateTearOff {
  const _$IssueTabStateTearOff();

  _IssueTabState call(
      {required List<Issue> issues,
      required int page,
      required bool loadingNext,
      required bool hasNext,
      required FilterState filterState,
      required DioError? error}) {
    return _IssueTabState(
      issues: issues,
      page: page,
      loadingNext: loadingNext,
      hasNext: hasNext,
      filterState: filterState,
      error: error,
    );
  }
}

/// @nodoc
const $IssueTabState = _$IssueTabStateTearOff();

/// @nodoc
mixin _$IssueTabState {
  List<Issue> get issues => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get loadingNext => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  FilterState get filterState => throw _privateConstructorUsedError;
  DioError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueTabStateCopyWith<IssueTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueTabStateCopyWith<$Res> {
  factory $IssueTabStateCopyWith(
          IssueTabState value, $Res Function(IssueTabState) then) =
      _$IssueTabStateCopyWithImpl<$Res>;
  $Res call(
      {List<Issue> issues,
      int page,
      bool loadingNext,
      bool hasNext,
      FilterState filterState,
      DioError? error});

  $FilterStateCopyWith<$Res> get filterState;
}

/// @nodoc
class _$IssueTabStateCopyWithImpl<$Res>
    implements $IssueTabStateCopyWith<$Res> {
  _$IssueTabStateCopyWithImpl(this._value, this._then);

  final IssueTabState _value;
  // ignore: unused_field
  final $Res Function(IssueTabState) _then;

  @override
  $Res call({
    Object? issues = freezed,
    Object? page = freezed,
    Object? loadingNext = freezed,
    Object? hasNext = freezed,
    Object? filterState = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNext: loadingNext == freezed
          ? _value.loadingNext
          : loadingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      filterState: filterState == freezed
          ? _value.filterState
          : filterState // ignore: cast_nullable_to_non_nullable
              as FilterState,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError?,
    ));
  }

  @override
  $FilterStateCopyWith<$Res> get filterState {
    return $FilterStateCopyWith<$Res>(_value.filterState, (value) {
      return _then(_value.copyWith(filterState: value));
    });
  }
}

/// @nodoc
abstract class _$IssueTabStateCopyWith<$Res>
    implements $IssueTabStateCopyWith<$Res> {
  factory _$IssueTabStateCopyWith(
          _IssueTabState value, $Res Function(_IssueTabState) then) =
      __$IssueTabStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Issue> issues,
      int page,
      bool loadingNext,
      bool hasNext,
      FilterState filterState,
      DioError? error});

  @override
  $FilterStateCopyWith<$Res> get filterState;
}

/// @nodoc
class __$IssueTabStateCopyWithImpl<$Res>
    extends _$IssueTabStateCopyWithImpl<$Res>
    implements _$IssueTabStateCopyWith<$Res> {
  __$IssueTabStateCopyWithImpl(
      _IssueTabState _value, $Res Function(_IssueTabState) _then)
      : super(_value, (v) => _then(v as _IssueTabState));

  @override
  _IssueTabState get _value => super._value as _IssueTabState;

  @override
  $Res call({
    Object? issues = freezed,
    Object? page = freezed,
    Object? loadingNext = freezed,
    Object? hasNext = freezed,
    Object? filterState = freezed,
    Object? error = freezed,
  }) {
    return _then(_IssueTabState(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNext: loadingNext == freezed
          ? _value.loadingNext
          : loadingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      filterState: filterState == freezed
          ? _value.filterState
          : filterState // ignore: cast_nullable_to_non_nullable
              as FilterState,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError?,
    ));
  }
}

/// @nodoc

class _$_IssueTabState with DiagnosticableTreeMixin implements _IssueTabState {
  _$_IssueTabState(
      {required this.issues,
      required this.page,
      required this.loadingNext,
      required this.hasNext,
      required this.filterState,
      required this.error});

  @override
  final List<Issue> issues;
  @override
  final int page;
  @override
  final bool loadingNext;
  @override
  final bool hasNext;
  @override
  final FilterState filterState;
  @override
  final DioError? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IssueTabState(issues: $issues, page: $page, loadingNext: $loadingNext, hasNext: $hasNext, filterState: $filterState, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IssueTabState'))
      ..add(DiagnosticsProperty('issues', issues))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('loadingNext', loadingNext))
      ..add(DiagnosticsProperty('hasNext', hasNext))
      ..add(DiagnosticsProperty('filterState', filterState))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueTabState &&
            const DeepCollectionEquality().equals(other.issues, issues) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.loadingNext, loadingNext) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext) &&
            const DeepCollectionEquality()
                .equals(other.filterState, filterState) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(issues),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(loadingNext),
      const DeepCollectionEquality().hash(hasNext),
      const DeepCollectionEquality().hash(filterState),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$IssueTabStateCopyWith<_IssueTabState> get copyWith =>
      __$IssueTabStateCopyWithImpl<_IssueTabState>(this, _$identity);
}

abstract class _IssueTabState implements IssueTabState {
  factory _IssueTabState(
      {required List<Issue> issues,
      required int page,
      required bool loadingNext,
      required bool hasNext,
      required FilterState filterState,
      required DioError? error}) = _$_IssueTabState;

  @override
  List<Issue> get issues;
  @override
  int get page;
  @override
  bool get loadingNext;
  @override
  bool get hasNext;
  @override
  FilterState get filterState;
  @override
  DioError? get error;
  @override
  @JsonKey(ignore: true)
  _$IssueTabStateCopyWith<_IssueTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
