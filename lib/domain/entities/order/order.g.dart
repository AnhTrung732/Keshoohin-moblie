// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      iDInvoice: json['iDInvoice'] as int,
      iDTracking: json['iDTracking'] as int,
      iDAddress: json['iDAddress'] as int,
      iDCoupon: json['iDCoupon'] as int?,
      iDCus: json['iDCus'] as int,
      note: json['note'] as String?,
      totalValue: json['totalValue'] as int,
      methodPay: json['methodPay'] as int,
      methodTransfer: json['methodTransfer'] as int,
      createdOn: json['createdOn'] as String,
      isPrintInvoice: json['isPrintInvoice'] as int,
      isPaid: json['isPaid'] as int,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'iDInvoice': instance.iDInvoice,
      'iDTracking': instance.iDTracking,
      'iDAddress': instance.iDAddress,
      'iDCoupon': instance.iDCoupon,
      'iDCus': instance.iDCus,
      'note': instance.note,
      'totalValue': instance.totalValue,
      'methodPay': instance.methodPay,
      'methodTransfer': instance.methodTransfer,
      'createdOn': instance.createdOn,
      'isPrintInvoice': instance.isPrintInvoice,
      'isPaid': instance.isPaid,
      'address': instance.address,
      'products': instance.products,
    };
