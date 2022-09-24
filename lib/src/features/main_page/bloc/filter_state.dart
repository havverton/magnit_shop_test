part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = InitialFilterState;
  const factory FilterState.loading() = LoadingFilterState;
  const factory FilterState.error() = ErrorFilterState;
  const factory FilterState.loaded(List<FilterResult> shops,
      {@Default(false) bool filter}) = LoadedState;
}
