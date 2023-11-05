import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart'; // This is for JSON serialization

@freezed
abstract class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    required int iDNoti,
    required int iDCus,
    required String createdOn,
    required int isSeen,
    required int isDeleted,
    required String title,
    required String content,
    required int type,
    String? note,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
