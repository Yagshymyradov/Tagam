// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../configs/extensions.dart';
// import '../../data/api_response.dart';
// import '../../main.dart';
// import '../../view_model/view_model.dart';
// import 'widgets/widgets.dart';
//
// class CategoryView extends StatelessWidget {
//   const CategoryView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final textThemeEx = context.textThemeEx;
//
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: false,
//         title: Text(
//           'Kategorýalar',
//           style: textThemeEx.headlineLargeEx,
//         ),
//       ),
//       body: ChangeNotifierProvider(
//         create: (context) => MenusViewModel(
//           detailsRepository: getIt(),
//         )..getMenus(),
//         child: Consumer<MenusViewModel>(
//           builder: (context, value, child) {
//             switch (value.responseState.status) {
//               case Status.loaded:
//                 return const Categories();
//               case Status.error:
//                 return Text(value.responseState.message.toString());
//               case Status.loading:
//                 return const Center(child: CircularProgressIndicator());
//               default:
//                 return const SizedBox();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class Categories extends StatelessWidget {
//   const Categories({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final data = context.watch<MenusViewModel>().responseState.data;
//
//     return GridView.builder(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         mainAxisSpacing: 8,
//         crossAxisSpacing: 8,
//         mainAxisExtent: 150,
//       ),
//       itemCount: data?.length ?? 0,
//       itemBuilder: (context, index) => CategoryCard(menus: data?[index]),
//     );
//   }
// }
