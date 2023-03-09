import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/models.dart';
import '../presentation/blocs/filters/filter_bloc.dart';

class CustomCategoryFilter extends StatelessWidget {
  const  CustomCategoryFilter({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        if (state is FilterLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is FilterLoaded) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: state.filter.categoryFilter.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.filter.categoryFilter[index].category.name,
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleLarge,
                      ),
                      SizedBox(height: 25,
                        child: Checkbox(
                          value: state.filter.categoryFilter[index].value,
                          onChanged: (bool? newValue) {
                            context.read<FilterBloc>().add(CategoryFilterUpdate(
                                categoryFilter: state.filter
                                    .categoryFilter[index].copyWith(
                                    value: !state.filter.categoryFilter[index]
                                        .value),));
                          },
                        ),)
                    ],
                  ),
                );
              });
        }
        else {
          return const Text('Somthing went wrong');
        }
      },
    );
  }
}