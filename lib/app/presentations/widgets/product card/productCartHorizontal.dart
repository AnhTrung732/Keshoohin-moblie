// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:twenti_mobile/common%20widgets/sale_percent_badge/salePercentBadge.dart';
// import 'package:twenti_mobile/themes/theme.dart';
// import 'package:twenti_mobile/views/product%20page/productPage.dart';

// import '../../models/product/product.dart';
// import '../../services/currency_format/currencyFormat.dart';

// class productCardHorizontal extends StatelessWidget {
//   late Product product;
//   productCardHorizontal(this.product);

//   @override
//   Widget build(BuildContext context) {
//     var salePercent =
//         (100 - product.retailPrice / product.listPrice * 100).toInt();
//     return Container(
//         height: MediaQuery.of(context).size.height / 6,
//         margin: EdgeInsets.all(Theme.of(context).own().defaultProductCardMargin),
//         clipBehavior: Clip.hardEdge,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           color: Theme.of(context).own().defaultContainerColor,
//           boxShadow: <BoxShadow>[
//             BoxShadow(
//               color: Colors.black45.withOpacity(0.2),
//               blurRadius: 2,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Material(
//           elevation: 5,
//           child: InkWell(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   PageTransition(
//                       type: PageTransitionType.rightToLeftWithFade,
//                       child: ProductPage(product.idProduct),
//                       childCurrent: this));
//             },
//             child: Row(
//               children: [
//                 Expanded(
//                     flex: 1,
//                     child: Image.network(
//                       product.images!.first.path!,
//                       fit: BoxFit.cover,
//                     )),
//                 Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: EdgeInsets.all(
//                         Theme.of(context).own().defaultVerticalPaddingOfScreen),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Text(
//                           product.brand!.nameBrand,
//                           maxLines: 1,
//                           style: TextStyle(overflow: TextOverflow.ellipsis),
//                         ),
//                         SizedBox(
//                             height:
//                                 Theme.of(context).own().defaultMarginBetween),
//                         Text(
//                           product.nameProduct,
//                           maxLines: 2,
//                           style: const TextStyle(
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         SizedBox(
//                             height:
//                                 Theme.of(context).own().defaultMarginBetween),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               currencyFormat(product.retailPrice),
//                               style: TextStyle(
//                                 color: Theme.of(context).own().retailPriceColor,
//                                 fontSize:
//                                     Theme.of(context).own().retailPriceSize,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             salePercent != 0
//                                 ? Padding(
//                                     padding: const EdgeInsets.only(left: 5),
//                                     child: salePercentBadge(salePercent),
//                                   )
//                                 : Container(),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
