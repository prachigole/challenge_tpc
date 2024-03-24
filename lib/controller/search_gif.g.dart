// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_gif.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchGifHash() => r'8e50716172bd4351de21fbd2191e9ced1767434d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [searchGif].
@ProviderFor(searchGif)
const searchGifProvider = SearchGifFamily();

/// See also [searchGif].
class SearchGifFamily extends Family<AsyncValue<List<GifElement>>> {
  /// See also [searchGif].
  const SearchGifFamily();

  /// See also [searchGif].
  SearchGifProvider call(
    String searchString,
  ) {
    return SearchGifProvider(
      searchString,
    );
  }

  @override
  SearchGifProvider getProviderOverride(
    covariant SearchGifProvider provider,
  ) {
    return call(
      provider.searchString,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchGifProvider';
}

/// See also [searchGif].
class SearchGifProvider extends AutoDisposeFutureProvider<List<GifElement>> {
  /// See also [searchGif].
  SearchGifProvider(
    String searchString,
  ) : this._internal(
          (ref) => searchGif(
            ref as SearchGifRef,
            searchString,
          ),
          from: searchGifProvider,
          name: r'searchGifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchGifHash,
          dependencies: SearchGifFamily._dependencies,
          allTransitiveDependencies: SearchGifFamily._allTransitiveDependencies,
          searchString: searchString,
        );

  SearchGifProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchString,
  }) : super.internal();

  final String searchString;

  @override
  Override overrideWith(
    FutureOr<List<GifElement>> Function(SearchGifRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchGifProvider._internal(
        (ref) => create(ref as SearchGifRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchString: searchString,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<GifElement>> createElement() {
    return _SearchGifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchGifProvider && other.searchString == searchString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchGifRef on AutoDisposeFutureProviderRef<List<GifElement>> {
  /// The parameter `searchString` of this provider.
  String get searchString;
}

class _SearchGifProviderElement
    extends AutoDisposeFutureProviderElement<List<GifElement>>
    with SearchGifRef {
  _SearchGifProviderElement(super.provider);

  @override
  String get searchString => (origin as SearchGifProvider).searchString;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
