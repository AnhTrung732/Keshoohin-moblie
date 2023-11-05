// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      iDAddress: json['iDAddress'] as int?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      addressDetail: json['addressDetail'] as String?,
      ward: json['ward'] as String?,
      phone: json['phone'] as String?,
      isDeleted: json['isDeleted'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'iDAddress': instance.iDAddress,
      'city': instance.city,
      'district': instance.district,
      'addressDetail': instance.addressDetail,
      'ward': instance.ward,
      'phone': instance.phone,
      'isDeleted': instance.isDeleted,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
    };
