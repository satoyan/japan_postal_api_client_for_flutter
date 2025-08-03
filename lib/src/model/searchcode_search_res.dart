//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class SearchcodeSearchRes {
  /// Returns a new [SearchcodeSearchRes] instance.
  SearchcodeSearchRes({
    required this.page,
    required this.limit,
    required this.count,
    required this.searchtype,
    this.addresses = const [],
  });

  /// ページ数 (デフォルト値:1)
  int page;

  /// 取得最大レコード数 (デフォルト値:1000、最大値:1000)
  int limit;

  /// 該当データ数
  int count;

  /// 検索タイプ (dgacode/zipcode/bizzipcodeのいずれか)
  String searchtype;

  List<SearchcodeSearchResAddressesInner> addresses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchcodeSearchRes &&
          other.page == page &&
          other.limit == limit &&
          other.count == count &&
          other.searchtype == searchtype &&
          _deepEquality.equals(other.addresses, addresses);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (page.hashCode) +
      (limit.hashCode) +
      (count.hashCode) +
      (searchtype.hashCode) +
      (addresses.hashCode);

  @override
  String toString() =>
      'SearchcodeSearchRes[page=$page, limit=$limit, count=$count, searchtype=$searchtype, addresses=$addresses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'page'] = page;
    json[r'limit'] = limit;
    json[r'count'] = count;
    json[r'searchtype'] = searchtype;
    json[r'addresses'] = addresses;
    return json;
  }

  /// Returns a new [SearchcodeSearchRes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchcodeSearchRes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(
            json.containsKey(key),
            'Required key "SearchcodeSearchRes[$key]" is missing from JSON.',
          );
          assert(
            json[key] != null,
            'Required key "SearchcodeSearchRes[$key]" has a null value in JSON.',
          );
        }
        return true;
      }());

      return SearchcodeSearchRes(
        page: mapValueOfType<int>(json, r'page')!,
        limit: mapValueOfType<int>(json, r'limit')!,
        count: mapValueOfType<int>(json, r'count')!,
        searchtype: mapValueOfType<String>(json, r'searchtype')!,
        addresses: SearchcodeSearchResAddressesInner.listFromJson(
          json[r'addresses'],
        ),
      );
    }
    return null;
  }

  static List<SearchcodeSearchRes> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SearchcodeSearchRes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchcodeSearchRes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchcodeSearchRes> mapFromJson(dynamic json) {
    final map = <String, SearchcodeSearchRes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchcodeSearchRes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchcodeSearchRes-objects as value to a dart map
  static Map<String, List<SearchcodeSearchRes>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SearchcodeSearchRes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchcodeSearchRes.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'page',
    'limit',
    'count',
    'searchtype',
    'addresses',
  };
}
