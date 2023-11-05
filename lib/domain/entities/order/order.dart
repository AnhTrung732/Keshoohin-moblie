import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keshoohin/domain/entities/product/cart_product.dart';
import 'address.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    required int iDInvoice,
    required int iDTracking,
    required int iDAddress,
    int? iDCoupon,
    required int iDCus,
    String? note,
    required int totalValue,
    required int methodPay,
    required int methodTransfer,
    required String createdOn,
    required int isPrintInvoice,
    required int isPaid,
    required Address address,
    required List<CartProduct> products,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
