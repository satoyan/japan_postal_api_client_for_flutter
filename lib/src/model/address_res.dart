//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class AddressRes {
  /// Returns a new [AddressRes] instance.
  AddressRes({
    required this.level,
    required this.page,
    required this.limit,
    required this.count,
    this.addresses = const [],
  });

  /// マッチングレベル
  int level;

  /// ページ数
  int page;

  /// 取得最大レコード数
  int limit;

  /// 該当データ数
  int count;

  List<AddressResAddressesInner> addresses;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressRes &&
          other.level == level &&
          other.page == page &&
          other.limit == limit &&
          other.count == count &&
          _deepEquality.equals(other.addresses, addresses);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (level.hashCode) +
      (page.hashCode) +
      (limit.hashCode) +
      (count.hashCode) +
      (addresses.hashCode);

  @override
  String toString() =>
      'AddressRes[level=$level, page=$page, limit=$limit, count=$count, addresses=$addresses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'level'] = level;
    json[r'page'] = page;
    json[r'limit'] = limit;
    json[r'count'] = count;
    json[r'addresses'] = addresses;
    return json;
  }

  /// Returns a new [AddressRes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressRes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(
            json.containsKey(key),
            'Required key "AddressRes[$key]" is missing from JSON.',
          );
          assert(
            json[key] != null,
            'Required key "AddressRes[$key]" has a null value in JSON.',
          );
        }
        return true;
      }());

      return AddressRes(
        level: mapValueOfType<int>(json, r'level')!,
        page: mapValueOfType<int>(json, r'page')!,
        limit: mapValueOfType<int>(json, r'limit')!,
        count: mapValueOfType<int>(json, r'count')!,
        addresses: AddressResAddressesInner.listFromJson(json[r'addresses']),
      );
    }
    return null;
  }

  static List<AddressRes> listFromJson(dynamic json, {bool growable = false}) {
    final result = <AddressRes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddressRes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddressRes> mapFromJson(dynamic json) {
    final map = <String, AddressRes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddressRes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddressRes-objects as value to a dart map
  static Map<String, List<AddressRes>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AddressRes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddressRes.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'level',
    'page',
    'limit',
    'count',
    'addresses',
  };
}
