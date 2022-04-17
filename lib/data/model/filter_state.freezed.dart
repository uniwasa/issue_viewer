// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  _FilterState call(
      {required bool onlyOpen,
      required bool pastYear,
      required SortType sortType,
      required DirectionType directionType}) {
    return _FilterState(
      onlyOpen: onlyOpen,
      pastYear: pastYear,
      sortType: sortType,
      directionType: directionType,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  bool get onlyOpen => throw _privateConstructorUsedError;
  bool get pastYear => throw _privateConstructorUsedError;
  SortType get sortType => throw _privateConstructorUsedError;
  DirectionType get directionType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call(
      {bool onlyOpen,
      bool pastYear,
      SortType sortType,
      DirectionType directionType});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object? onlyOpen = freezed,
    Object? pastYear = freezed,
    Object? sortType = freezed,
    Object? directionType = freezed,
  }) {
    return _then(_value.copyWith(
      onlyOpen: onlyOpen == freezed
          ? _value.onlyOpen
          : onlyOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      pastYear: pastYear == freezed
          ? _value.pastYear
          : pastYear // ignore: cast_nullable_to_non_nullable
              as bool,
      sortType: sortType == freezed
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      directionType: directionType == freezed
          ? _value.directionType
          : directionType // ignore: cast_nullable_to_non_nullable
              as DirectionType,
    ));
  }
}

/// @nodoc
abstract class _$FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$FilterStateCopyWith(
          _FilterState value, $Res Function(_FilterState) then) =
      __$FilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool onlyOpen,
      bool pastYear,
      SortType sortType,
      DirectionType directionType});
}

/// @nodoc
class __$FilterStateCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$FilterStateCopyWith<$Res> {
  __$FilterStateCopyWithImpl(
      _FilterState _value, $Res Function(_FilterState) _then)
      : super(_value, (v) => _then(v as _FilterState));

  @override
  _FilterState get _value => super._value as _FilterState;

  @override
  $Res call({
    Object? onlyOpen = freezed,
    Object? pastYear = freezed,
    Object? sortType = freezed,
    Object? directionType = freezed,
  }) {
    return _then(_FilterState(
      onlyOpen: onlyOpen == freezed
          ? _value.onlyOpen
          : onlyOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      pastYear: pastYear == freezed
          ? _value.pastYear
          : pastYear // ignore: cast_nullable_to_non_nullable
              as bool,
      sortType: sortType == freezed
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      directionType: directionType == freezed
          ? _value.directionType
          : directionType // ignore: cast_nullable_to_non_nullable
              as DirectionType,
    ));
  }
}

/// @nodoc

class _$_FilterState with DiagnosticableTreeMixin implements _FilterState {
  _$_FilterState(
      {required this.onlyOpen,
      required this.pastYear,
      required this.sortType,
      required this.directionType});

  @override
  final bool onlyOpen;
  @override
  final bool pastYear;
  @override
  final SortType sortType;
  @override
  final DirectionType directionType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterState(onlyOpen: $onlyOpen, pastYear: $pastYear, sortType: $sortType, directionType: $directionType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterState'))
      ..add(DiagnosticsProperty('onlyOpen', onlyOpen))
      ..add(DiagnosticsProperty('pastYear', pastYear))
      ..add(DiagnosticsProperty('sortType', sortType))
      ..add(DiagnosticsProperty('directionType', directionType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterState &&
            const DeepCollectionEquality().equals(other.onlyOpen, onlyOpen) &&
            const DeepCollectionEquality().equals(other.pastYear, pastYear) &&
            const DeepCollectionEquality().equals(other.sortType, sortType) &&
            const DeepCollectionEquality()
                .equals(other.directionType, directionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onlyOpen),
      const DeepCollectionEquality().hash(pastYear),
      const DeepCollectionEquality().hash(sortType),
      const DeepCollectionEquality().hash(directionType));

  @JsonKey(ignore: true)
  @override
  _$FilterStateCopyWith<_FilterState> get copyWith =>
      __$FilterStateCopyWithImpl<_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  factory _FilterState(
      {required bool onlyOpen,
      required bool pastYear,
      required SortType sortType,
      required DirectionType directionType}) = _$_FilterState;

  @override
  bool get onlyOpen;
  @override
  bool get pastYear;
  @override
  SortType get sortType;
  @override
  DirectionType get directionType;
  @override
  @JsonKey(ignore: true)
  _$FilterStateCopyWith<_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
