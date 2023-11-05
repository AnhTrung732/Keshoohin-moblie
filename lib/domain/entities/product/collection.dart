import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  factory Collection({
    required int iDCollection,
    required String nameCollection,
    String? routePath,
    required String createdOn,
    String? description,
    String? logoImagePath,
    String? wallPaperPath,
    required String startOn,
    required String endOn,
    String? coverImagePath,
    required List<Product> products,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
