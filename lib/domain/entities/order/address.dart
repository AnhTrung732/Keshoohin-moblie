import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    int? iDAddress,
    String? city,
    String? district,
    String? addressDetail,
    String? ward,
    String? phone,
    int? isDeleted,
    String? firstName,
    String? lastName,
    String? email,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
