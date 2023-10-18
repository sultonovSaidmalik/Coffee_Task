import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/home_bloc/home_bloc.dart';
import '../../../common/model/category.dart';
import 'category_item_widget.dart';
class TapBarWidgets extends StatelessWidget {
  const TapBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Category category =
                Category.fromJson(categories[index]);
                return CategoryItem(
                  onTap: () {
                    if (state is HomeSuccessProductState) {
                      if (category.id == state.category) {
                        return;
                      }
                    }
                    if (category.id == "all") {
                      context
                          .read<HomeBloc>()
                          .add(const HomeGetAllProduct());
                      return;
                    }
                    context.read<HomeBloc>().add(
                        HomeGetProductWithCategory(
                            category: category.id));
                  },
                  category: category,
                  selectedId: "selectedCategoryId",
                );
              },
              itemCount: categories.length,
            ),
          );
        },
      ),
    );
  }
}
