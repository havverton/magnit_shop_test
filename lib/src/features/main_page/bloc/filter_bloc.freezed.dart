// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadAllShops,
    required TResult Function(FilterQuery query) loadByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(LoadShops value) loadAllShops,
    required TResult Function(LoadByFilter value) loadByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;
}

/// @nodoc
abstract class _$$FilterInitialCopyWith<$Res> {
  factory _$$FilterInitialCopyWith(
          _$FilterInitial value, $Res Function(_$FilterInitial) then) =
      __$$FilterInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterInitialCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$$FilterInitialCopyWith<$Res> {
  __$$FilterInitialCopyWithImpl(
      _$FilterInitial _value, $Res Function(_$FilterInitial) _then)
      : super(_value, (v) => _then(v as _$FilterInitial));

  @override
  _$FilterInitial get _value => super._value as _$FilterInitial;
}

/// @nodoc

class _$FilterInitial implements FilterInitial {
  const _$FilterInitial();

  @override
  String toString() {
    return 'FilterEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadAllShops,
    required TResult Function(FilterQuery query) loadByFilter,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(LoadShops value) loadAllShops,
    required TResult Function(LoadByFilter value) loadByFilter,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FilterInitial implements FilterEvent {
  const factory FilterInitial() = _$FilterInitial;
}

/// @nodoc
abstract class _$$LoadShopsCopyWith<$Res> {
  factory _$$LoadShopsCopyWith(
          _$LoadShops value, $Res Function(_$LoadShops) then) =
      __$$LoadShopsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadShopsCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$$LoadShopsCopyWith<$Res> {
  __$$LoadShopsCopyWithImpl(
      _$LoadShops _value, $Res Function(_$LoadShops) _then)
      : super(_value, (v) => _then(v as _$LoadShops));

  @override
  _$LoadShops get _value => super._value as _$LoadShops;
}

/// @nodoc

class _$LoadShops implements LoadShops {
  const _$LoadShops();

  @override
  String toString() {
    return 'FilterEvent.loadAllShops()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadShops);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadAllShops,
    required TResult Function(FilterQuery query) loadByFilter,
  }) {
    return loadAllShops();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
  }) {
    return loadAllShops?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
    required TResult orElse(),
  }) {
    if (loadAllShops != null) {
      return loadAllShops();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(LoadShops value) loadAllShops,
    required TResult Function(LoadByFilter value) loadByFilter,
  }) {
    return loadAllShops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
  }) {
    return loadAllShops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
    required TResult orElse(),
  }) {
    if (loadAllShops != null) {
      return loadAllShops(this);
    }
    return orElse();
  }
}

abstract class LoadShops implements FilterEvent {
  const factory LoadShops() = _$LoadShops;
}

/// @nodoc
abstract class _$$LoadByFilterCopyWith<$Res> {
  factory _$$LoadByFilterCopyWith(
          _$LoadByFilter value, $Res Function(_$LoadByFilter) then) =
      __$$LoadByFilterCopyWithImpl<$Res>;
  $Res call({FilterQuery query});
}

/// @nodoc
class __$$LoadByFilterCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$$LoadByFilterCopyWith<$Res> {
  __$$LoadByFilterCopyWithImpl(
      _$LoadByFilter _value, $Res Function(_$LoadByFilter) _then)
      : super(_value, (v) => _then(v as _$LoadByFilter));

  @override
  _$LoadByFilter get _value => super._value as _$LoadByFilter;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$LoadByFilter(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as FilterQuery,
    ));
  }
}

/// @nodoc

class _$LoadByFilter implements LoadByFilter {
  const _$LoadByFilter(this.query);

  @override
  final FilterQuery query;

  @override
  String toString() {
    return 'FilterEvent.loadByFilter(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadByFilter &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$LoadByFilterCopyWith<_$LoadByFilter> get copyWith =>
      __$$LoadByFilterCopyWithImpl<_$LoadByFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadAllShops,
    required TResult Function(FilterQuery query) loadByFilter,
  }) {
    return loadByFilter(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
  }) {
    return loadByFilter?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadAllShops,
    TResult Function(FilterQuery query)? loadByFilter,
    required TResult orElse(),
  }) {
    if (loadByFilter != null) {
      return loadByFilter(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(LoadShops value) loadAllShops,
    required TResult Function(LoadByFilter value) loadByFilter,
  }) {
    return loadByFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
  }) {
    return loadByFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(LoadShops value)? loadAllShops,
    TResult Function(LoadByFilter value)? loadByFilter,
    required TResult orElse(),
  }) {
    if (loadByFilter != null) {
      return loadByFilter(this);
    }
    return orElse();
  }
}

abstract class LoadByFilter implements FilterEvent {
  const factory LoadByFilter(final FilterQuery query) = _$LoadByFilter;

  FilterQuery get query;
  @JsonKey(ignore: true)
  _$$LoadByFilterCopyWith<_$LoadByFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<FilterResult> shops, bool filter) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(LoadingFilterState value) loading,
    required TResult Function(ErrorFilterState value) error,
    required TResult Function(LoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;
}

/// @nodoc
abstract class _$$InitialFilterStateCopyWith<$Res> {
  factory _$$InitialFilterStateCopyWith(_$InitialFilterState value,
          $Res Function(_$InitialFilterState) then) =
      __$$InitialFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$InitialFilterStateCopyWith<$Res> {
  __$$InitialFilterStateCopyWithImpl(
      _$InitialFilterState _value, $Res Function(_$InitialFilterState) _then)
      : super(_value, (v) => _then(v as _$InitialFilterState));

  @override
  _$InitialFilterState get _value => super._value as _$InitialFilterState;
}

/// @nodoc

class _$InitialFilterState implements InitialFilterState {
  const _$InitialFilterState();

  @override
  String toString() {
    return 'FilterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialFilterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<FilterResult> shops, bool filter) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(LoadingFilterState value) loading,
    required TResult Function(ErrorFilterState value) error,
    required TResult Function(LoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialFilterState implements FilterState {
  const factory InitialFilterState() = _$InitialFilterState;
}

/// @nodoc
abstract class _$$LoadingFilterStateCopyWith<$Res> {
  factory _$$LoadingFilterStateCopyWith(_$LoadingFilterState value,
          $Res Function(_$LoadingFilterState) then) =
      __$$LoadingFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$LoadingFilterStateCopyWith<$Res> {
  __$$LoadingFilterStateCopyWithImpl(
      _$LoadingFilterState _value, $Res Function(_$LoadingFilterState) _then)
      : super(_value, (v) => _then(v as _$LoadingFilterState));

  @override
  _$LoadingFilterState get _value => super._value as _$LoadingFilterState;
}

/// @nodoc

class _$LoadingFilterState implements LoadingFilterState {
  const _$LoadingFilterState();

  @override
  String toString() {
    return 'FilterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingFilterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<FilterResult> shops, bool filter) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(LoadingFilterState value) loading,
    required TResult Function(ErrorFilterState value) error,
    required TResult Function(LoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingFilterState implements FilterState {
  const factory LoadingFilterState() = _$LoadingFilterState;
}

/// @nodoc
abstract class _$$ErrorFilterStateCopyWith<$Res> {
  factory _$$ErrorFilterStateCopyWith(
          _$ErrorFilterState value, $Res Function(_$ErrorFilterState) then) =
      __$$ErrorFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorFilterStateCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$ErrorFilterStateCopyWith<$Res> {
  __$$ErrorFilterStateCopyWithImpl(
      _$ErrorFilterState _value, $Res Function(_$ErrorFilterState) _then)
      : super(_value, (v) => _then(v as _$ErrorFilterState));

  @override
  _$ErrorFilterState get _value => super._value as _$ErrorFilterState;
}

/// @nodoc

class _$ErrorFilterState implements ErrorFilterState {
  const _$ErrorFilterState();

  @override
  String toString() {
    return 'FilterState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorFilterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<FilterResult> shops, bool filter) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(LoadingFilterState value) loading,
    required TResult Function(ErrorFilterState value) error,
    required TResult Function(LoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorFilterState implements FilterState {
  const factory ErrorFilterState() = _$ErrorFilterState;
}

/// @nodoc
abstract class _$$LoadedStateCopyWith<$Res> {
  factory _$$LoadedStateCopyWith(
          _$LoadedState value, $Res Function(_$LoadedState) then) =
      __$$LoadedStateCopyWithImpl<$Res>;
  $Res call({List<FilterResult> shops, bool filter});
}

/// @nodoc
class __$$LoadedStateCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$$LoadedStateCopyWith<$Res> {
  __$$LoadedStateCopyWithImpl(
      _$LoadedState _value, $Res Function(_$LoadedState) _then)
      : super(_value, (v) => _then(v as _$LoadedState));

  @override
  _$LoadedState get _value => super._value as _$LoadedState;

  @override
  $Res call({
    Object? shops = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$LoadedState(
      shops == freezed
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<FilterResult>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedState implements LoadedState {
  const _$LoadedState(final List<FilterResult> shops, {this.filter = false})
      : _shops = shops;

  final List<FilterResult> _shops;
  @override
  List<FilterResult> get shops {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  @JsonKey()
  final bool filter;

  @override
  String toString() {
    return 'FilterState.loaded(shops: $shops, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedState &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shops),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$LoadedStateCopyWith<_$LoadedState> get copyWith =>
      __$$LoadedStateCopyWithImpl<_$LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<FilterResult> shops, bool filter) loaded,
  }) {
    return loaded(shops, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
  }) {
    return loaded?.call(shops, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<FilterResult> shops, bool filter)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(shops, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialFilterState value) initial,
    required TResult Function(LoadingFilterState value) loading,
    required TResult Function(ErrorFilterState value) error,
    required TResult Function(LoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialFilterState value)? initial,
    TResult Function(LoadingFilterState value)? loading,
    TResult Function(ErrorFilterState value)? error,
    TResult Function(LoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements FilterState {
  const factory LoadedState(final List<FilterResult> shops,
      {final bool filter}) = _$LoadedState;

  List<FilterResult> get shops;
  bool get filter;
  @JsonKey(ignore: true)
  _$$LoadedStateCopyWith<_$LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
