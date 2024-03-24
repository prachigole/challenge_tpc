// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'giphy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GifElementImpl _$$GifElementImplFromJson(Map<String, dynamic> json) =>
    _$GifElementImpl(
      type: json['type'] as String,
      id: json['id'] as String,
      url: json['url'] as String,
      slug: json['slug'] as String,
      bitly_gif_url: json['bitly_gif_url'] as String,
      bitly_url: json['bitly_url'] as String,
      embed_url: json['embed_url'] as String,
      username: json['username'] as String,
      source: json['source'] as String,
      title: json['title'] as String,
      rating: json['rating'] as String,
      content_url: json['content_url'] as String,
      source_tld: json['source_tld'] as String,
      source_post_url: json['source_post_url'] as String,
      is_sticker: json['is_sticker'] as int,
      import_datetime: json['import_datetime'] as String,
      trending_datetime: json['trending_datetime'] as String,
    );

Map<String, dynamic> _$$GifElementImplToJson(_$GifElementImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'bitly_gif_url': instance.bitly_gif_url,
      'bitly_url': instance.bitly_url,
      'embed_url': instance.embed_url,
      'username': instance.username,
      'source': instance.source,
      'title': instance.title,
      'rating': instance.rating,
      'content_url': instance.content_url,
      'source_tld': instance.source_tld,
      'source_post_url': instance.source_post_url,
      'is_sticker': instance.is_sticker,
      'import_datetime': instance.import_datetime,
      'trending_datetime': instance.trending_datetime,
    };
