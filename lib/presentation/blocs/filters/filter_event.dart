part of 'filter_bloc.dart';

abstract class FilterEvent extends Equatable {
  const FilterEvent();
  @override

  List<Object?> get props => [];
}

class FilterLoad extends FilterEvent{
  @override

  List<Object?> get props => [];
}

class CategoryFilterUpdate extends FilterEvent{
  final CategoryFilter categoryFilter;

  CategoryFilterUpdate({required this.categoryFilter});
  @override

  List<Object?> get props => [categoryFilter];
}
class PriceFilterUpdate extends FilterEvent{
  final PriceFilter priceFilter;

  PriceFilterUpdate({required this.priceFilter});
  @override

  List<Object?> get props => [priceFilter];
}