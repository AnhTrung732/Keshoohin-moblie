import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_slider.freezed.dart';
part 'image_slider.g.dart';

@freezed
class ImageSlider with _$ImageSlider {
  const factory ImageSlider({
    @JsonKey(name: 'IDImage') int? idImage,
    @JsonKey(name: 'StartOn') String? startOn,
    @JsonKey(name: 'EndOn') String? endOn,
    @JsonKey(name: 'Path') String? path,
    @JsonKey(name: 'Route') String? route,
    @JsonKey(name: 'IsDeleted') int? isDeleted,
    @JsonKey(name: 'CreatedOn') String? createdOn,
  }) = _ImageSlider;

  factory ImageSlider.fromJson(Map<String, dynamic> json) =>
      _$ImageSliderFromJson(json);
}
