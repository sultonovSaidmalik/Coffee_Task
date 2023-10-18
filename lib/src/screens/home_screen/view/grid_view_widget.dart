import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/home_bloc/home_bloc.dart';
import '../../detail_screen/details_screen.dart';
import 'custom_product_widget.dart';
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: context.read<HomeBloc>(),
        builder: (context, state) {
          return Stack(
            children: [
              GridView.builder(
                padding: const EdgeInsets.only(top: 10.0),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(
                              product: product),
                        ),
                      )
                    },
                    child: CustomProductWidget(
                      color: Colors.primaries[index % 17],
                      product: product,
                    ),
                  );
                },
              ),
              if (state is HomeLoadingState)
                const Center(
                  child: CircularProgressIndicator(),
                )
            ],
          );
        },
      ),
    );
  }
}
