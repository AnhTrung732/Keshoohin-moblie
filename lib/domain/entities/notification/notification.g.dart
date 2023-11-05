// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      iDNoti: json['iDNoti'] as int,
      iDCus: json['iDCus'] as int,
      createdOn: json['createdOn'] as String,
      isSeen: json['isSeen'] as int,
      isDeleted: json['isDeleted'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as int,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'iDNoti': instance.iDNoti,
      'iDCus': instance.iDCus,
      'createdOn': instance.createdOn,
      'isSeen': instance.isSeen,
      'isDeleted': instance.isDeleted,
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'note': instance.note,
    };
