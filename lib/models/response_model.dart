import 'package:challenge_app/models/giphy_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class ResponseModel with _$ResponseModel {
  factory ResponseModel({
    required List<GifElement> data,
    // required ImagesModel images,
  }) = _ResponseModel;

  /// Convert a JSON object into an [ResponseModel] instance.
  /// This enables type-safe reading of the API response.
  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
