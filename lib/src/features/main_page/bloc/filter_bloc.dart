import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:magnit_shop_test/src/features/main_page/data/filter_service.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_query_model.dart';
import 'package:magnit_shop_test/src/features/main_page/domain/filter_result_model.dart';

part 'filter_bloc.freezed.dart';
part 'filter_event.dart';
part 'filter_state.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final FilterService _filterService;

  FilterBloc(this._filterService) : super(const FilterState.loading()) {
    on<LoadByFilter>((event, emit) async {
      emit(const FilterState.loading());

      final result = _filterService.getShops(event.query);

      emit(FilterState.loaded(result, filter: true));
    });

    on<LoadShops>((event, emit) async {
      emit(const FilterState.loading());

      final result = _filterService.getAllShops();

      emit(FilterState.loaded(result, filter: false));
    });

    on<FilterInitial>((event, emit) async {
      emit(const FilterState.loading());

      await _filterService.init();
      emit(const FilterState.initial());
    });
  }
}
