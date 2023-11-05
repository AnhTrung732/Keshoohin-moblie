// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get iDInvoice => throw _privateConstructorUsedError;
  int get iDTracking => throw _privateConstructorUsedError;
  int get iDAddress => throw _privateConstructorUsedError;
  int? get iDCoupon => throw _privateConstructorUsedError;
  int get iDCus => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int get totalValue => throw _privateConstructorUsedError;
  int get methodPay => throw _privateConstructorUsedError;
  int get methodTransfer => throw _privateConstructorUsedError;
  String get createdOn => throw _privateConstructorUsedError;
  int get isPrintInvoice => throw _privateConstructorUsedError;
  int get isPaid => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  List<CartProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int iDInvoice,
      int iDTracking,
      int iDAddress,
      int? iDCoupon,
      int iDCus,
      String? note,
      int totalValue,
      int methodPay,
      int methodTransfer,
      String createdOn,
      int isPrintInvoice,
      int isPaid,
      Address address,
      List<CartProduct> products});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iDInvoice = null,
    Object? iDTracking = null,
    Object? iDAddress = null,
    Object? iDCoupon = freezed,
    Object? iDCus = null,
    Object? note = freezed,
    Object? totalValue = null,
    Object? methodPay = null,
    Object? methodTransfer = null,
    Object? createdOn = null,
    Object? isPrintInvoice = null,
    Object? isPaid = null,
    Object? address = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      iDInvoice: null == iDInvoice
          ? _value.iDInvoice
          : iDInvoice // ignore: cast_nullable_to_non_nullable
              as int,
      iDTracking: null == iDTracking
          ? _value.iDTracking
          : iDTracking // ignore: cast_nullable_to_non_nullable
              as int,
      iDAddress: null == iDAddress
          ? _value.iDAddress
          : iDAddress // ignore: cast_nullable_to_non_nullable
              as int,
      iDCoupon: freezed == iDCoupon
          ? _value.iDCoupon
          : iDCoupon // ignore: cast_nullable_to_non_nullable
              as int?,
      iDCus: null == iDCus
          ? _value.iDCus
          : iDCus // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as int,
      methodPay: null == methodPay
          ? _value.methodPay
          : methodPay // ignore: cast_nullable_to_non_nullable
              as int,
      methodTransfer: null == methodTransfer
          ? _value.methodTransfer
          : methodTransfer // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      isPrintInvoice: null == isPrintInvoice
          ? _value.isPrintInvoice
          : isPrintInvoice // ignore: cast_nullable_to_non_nullable
              as int,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int iDInvoice,
      int iDTracking,
      int iDAddress,
      int? iDCoupon,
      int iDCus,
      String? note,
      int totalValue,
      int methodPay,
      int methodTransfer,
      String createdOn,
      int isPrintInvoice,
      int isPaid,
      Address address,
      List<CartProduct> products});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iDInvoice = null,
    Object? iDTracking = null,
    Object? iDAddress = null,
    Object? iDCoupon = freezed,
    Object? iDCus = null,
    Object? note = freezed,
    Object? totalValue = null,
    Object? methodPay = null,
    Object? methodTransfer = null,
    Object? createdOn = null,
    Object? isPrintInvoice = null,
    Object? isPaid = null,
    Object? address = null,
    Object? products = null,
  }) {
    return _then(_$OrderImpl(
      iDInvoice: null == iDInvoice
          ? _value.iDInvoice
          : iDInvoice // ignore: cast_nullable_to_non_nullable
              as int,
      iDTracking: null == iDTracking
          ? _value.iDTracking
          : iDTracking // ignore: cast_nullable_to_non_nullable
              as int,
      iDAddress: null == iDAddress
          ? _value.iDAddress
          : iDAddress // ignore: cast_nullable_to_non_nullable
              as int,
      iDCoupon: freezed == iDCoupon
          ? _value.iDCoupon
          : iDCoupon // ignore: cast_nullable_to_non_nullable
              as int?,
      iDCus: null == iDCus
          ? _value.iDCus
          : iDCus // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      totalValue: null == totalValue
          ? _value.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as int,
      methodPay: null == methodPay
          ? _value.methodPay
          : methodPay // ignore: cast_nullable_to_non_nullable
              as int,
      methodTransfer: null == methodTransfer
          ? _value.methodTransfer
          : methodTransfer // ignore: cast_nullable_to_non_nullable
              as int,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      isPrintInvoice: null == isPrintInvoice
          ? _value.isPrintInvoice
          : isPrintInvoice // ignore: cast_nullable_to_non_nullable
              as int,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {required this.iDInvoice,
      required this.iDTracking,
      required this.iDAddress,
      this.iDCoupon,
      required this.iDCus,
      this.note,
      required this.totalValue,
      required this.methodPay,
      required this.methodTransfer,
      required this.createdOn,
      required this.isPrintInvoice,
      required this.isPaid,
      required this.address,
      required final List<CartProduct> products})
      : _products = products;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int iDInvoice;
  @override
  final int iDTracking;
  @override
  final int iDAddress;
  @override
  final int? iDCoupon;
  @override
  final int iDCus;
  @override
  final String? note;
  @override
  final int totalValue;
  @override
  final int methodPay;
  @override
  final int methodTransfer;
  @override
  final String createdOn;
  @override
  final int isPrintInvoice;
  @override
  final int isPaid;
  @override
  final Address address;
  final List<CartProduct> _products;
  @override
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Order(iDInvoice: $iDInvoice, iDTracking: $iDTracking, iDAddress: $iDAddress, iDCoupon: $iDCoupon, iDCus: $iDCus, note: $note, totalValue: $totalValue, methodPay: $methodPay, methodTransfer: $methodTransfer, createdOn: $createdOn, isPrintInvoice: $isPrintInvoice, isPaid: $isPaid, address: $address, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.iDInvoice, iDInvoice) ||
                other.iDInvoice == iDInvoice) &&
            (identical(other.iDTracking, iDTracking) ||
                other.iDTracking == iDTracking) &&
            (identical(other.iDAddress, iDAddress) ||
                other.iDAddress == iDAddress) &&
            (identical(other.iDCoupon, iDCoupon) ||
                other.iDCoupon == iDCoupon) &&
            (identical(other.iDCus, iDCus) || other.iDCus == iDCus) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.methodPay, methodPay) ||
                other.methodPay == methodPay) &&
            (identical(other.methodTransfer, methodTransfer) ||
                other.methodTransfer == methodTransfer) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.isPrintInvoice, isPrintInvoice) ||
                other.isPrintInvoice == isPrintInvoice) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      iDInvoice,
      iDTracking,
      iDAddress,
      iDCoupon,
      iDCus,
      note,
      totalValue,
      methodPay,
      methodTransfer,
      createdOn,
      isPrintInvoice,
      isPaid,
      address,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final int iDInvoice,
      required final int iDTracking,
      required final int iDAddress,
      final int? iDCoupon,
      required final int iDCus,
      final String? note,
      required final int totalValue,
      required final int methodPay,
      required final int methodTransfer,
      required final String createdOn,
      required final int isPrintInvoice,
      required final int isPaid,
      required final Address address,
      required final List<CartProduct> products}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get iDInvoice;
  @override
  int get iDTracking;
  @override
  int get iDAddress;
  @override
  int? get iDCoupon;
  @override
  int get iDCus;
  @override
  String? get note;
  @override
  int get totalValue;
  @override
  int get methodPay;
  @override
  int get methodTransfer;
  @override
  String get createdOn;
  @override
  int get isPrintInvoice;
  @override
  int get isPaid;
  @override
  Address get address;
  @override
  List<CartProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
