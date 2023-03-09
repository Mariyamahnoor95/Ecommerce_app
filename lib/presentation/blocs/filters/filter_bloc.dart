import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/models/filter.dart';
import '../../../models/models.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterLoading()) {
    on<FilterLoad>(_onLoadFilter);
    on<CategoryFilterUpdate>(_onUpdatecategaryFilter);
    on<PriceFilterUpdate>(_onupdatePriceFilter);
  }

  void _onLoadFilter(FilterLoad event, Emitter<FilterState> emit) {
    emit(FilterLoaded(
        filter: Filter(
            categoryFilter: CategoryFilter.filters,
            priceFilter: PriceFilter.filters)));
  }

  void _onUpdatecategaryFilter(CategoryFilterUpdate event,
      Emitter<FilterState> emit) {
    final state = this.state;
    if (state is FilterLoaded) {
      final List<CategoryFilter> updateCategoryFilter = state
          .filter.categoryFilter
          .map((categoryFilter) =>
      categoryFilter.id == event.categoryFilter.id
          ? event.categoryFilter
          : categoryFilter)
          .toList();

      emit(FilterLoaded(
          filter: Filter(
              categoryFilter:updateCategoryFilter,
              priceFilter: state.filter.priceFilter)));
    }
  }

  void _onupdatePriceFilter(PriceFilterUpdate event,
      Emitter<FilterState> emit) {
    final state = this.state;
    if (state is FilterLoaded) {
      final List<PriceFilter> updatePriceFilter =
      state.filter.priceFilter.map((priceFilter) =>
      priceFilter.id == event.priceFilter.id ? event.priceFilter : priceFilter)
          .toList();
      emit(FilterLoaded(
        filter: Filter(
          categoryFilter: state.filter.categoryFilter,
          priceFilter: updatePriceFilter
        )
      ));
    }
  }
}
