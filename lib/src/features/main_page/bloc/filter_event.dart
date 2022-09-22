part of 'filter_bloc.dart';

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.initial() = FilterInitial;
  const factory FilterEvent.loadAllShops() = LoadShops;
  const factory FilterEvent.loadByFilter(FilterQuery query) = LoadByFilter;
}
