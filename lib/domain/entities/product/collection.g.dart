// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      iDCollection: json['iDCollection'] as int,
      nameCollection: json['nameCollection'] as String,
      routePath: json['routePath'] as String?,
      createdOn: json['createdOn'] as String,
      description: json['description'] as String?,
      logoImagePath: json['logoImagePath'] as String?,
      wallPaperPath: json['wallPaperPath'] as String?,
      startOn: json['startOn'] as String,
      endOn: json['endOn'] as String,
      coverImagePath: json['coverImagePath'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'iDCollection': instance.iDCollection,
      'nameCollection': instance.nameCollection,
      'routePath': instance.routePath,
      'createdOn': instance.createdOn,
      'description': instance.description,
      'logoImagePath': instance.logoImagePath,
      'wallPaperPath': instance.wallPaperPath,
      'startOn': instance.startOn,
      'endOn': instance.endOn,
      'coverImagePath': instance.coverImagePath,
      'products': instance.products,
    };
