import 'package:freezed_annotation/freezed_annotation.dart';

part 'giphy_model.freezed.dart';
part 'giphy_model.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class GifElement with _$GifElement {
  factory GifElement({
    required String type,
    required String id,
    required String url,
    required String slug,
    required String bitly_gif_url,
    required String bitly_url,
    required String embed_url,
    required String username,
    required String source,
    required String title,
    required String rating,
    required String content_url,
    required String source_tld,
    required String source_post_url,
    required int is_sticker,
    required String import_datetime,
    required String trending_datetime,
    // required ImagesModel images,
  }) = _GifElement;

  /// Convert a JSON object into an [GifElement] instance.
  /// This enables type-safe reading of the API response.
  factory GifElement.fromJson(Map<String, dynamic> json) =>
      _$GifElementFromJson(json);
}
