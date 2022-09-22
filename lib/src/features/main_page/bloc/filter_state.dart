part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = InitialFilterState;
  const factory FilterState.loading() = LoadingFilterState;
  const factory FilterState.error() = ErrorFilterState;
  const factory FilterState.loadedDefault(List<FilterResult> shops) =
      LoadedDefaultState;
  const factory FilterState.loadedByFilter(List<FilterResult> shops) =
      LoadedByFilterState;
}
