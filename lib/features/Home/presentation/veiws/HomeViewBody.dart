import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Wrap GridView.builder with SizedBox or Expanded to constrain its size
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10, // Define itemCount to avoid infinite builder
            itemBuilder: (context, index) {
              return Center(
                  child: SvgPicture.asset('assets/images/fooditem.svg'));
              // return Card(

              //   shape: BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              //   child: Center(
              //       child: SvgPicture.asset('assets/images/fooditem.svg')),
              // );
            },
          ),
        ),
      ],
    );
  }
}
