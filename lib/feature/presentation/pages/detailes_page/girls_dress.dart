// import 'package:delivery_app_with_admin_pannel/feature/presentation/pages/detailes_page/my_grid.dart';
// import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/chip_container.dart';

// import 'package:flutter/material.dart';

// class GirlsDress extends StatelessWidget {
//   const GirlsDress({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> girlDress = [
//       'All',
//       'Bengali',
//       'Pakistani',
//       'Western',
//       'Borkha',
//     ];

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 55,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: girlDress.length,
//                 itemBuilder: (context, index) {
//                   return ChipContainer(
//                     name: girlDress[index],
//                   );
//                 },
//               ),
//             ),
//             const MyGrid(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:delivery_app_with_admin_pannel/feature/presentation/riverpod/dress_page_cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/chip_container.dart';

class GirlsDress extends ConsumerWidget {
  const GirlsDress({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> girlDress = [
      'All',
      'Bengali',
      'Pakistani',
      'Western',
      'Borkha'
    ];

    // Watch selected category and filtered dresses
    final selectedCategory = ref.watch(girlDressCategoryProvider);
    final filteredDresses = ref.watch(dressesProvider);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: girlDress.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Update selected category when a chip is tapped
                      ref
                          .read(girlDressCategoryProvider.notifier)
                          .selectCategory(girlDress[index]);
                    },
                    child: ChipContainer(
                      name: girlDress[index],
                      isSelected: selectedCategory ==
                          girlDress[index], // Highlight selected chip
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 20,
                childAspectRatio: 1,
              ),
              itemCount: filteredDresses.length,
              itemBuilder: (context, index) {
                final dress = filteredDresses[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        dress['url']!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Price: ${dress['price']}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
