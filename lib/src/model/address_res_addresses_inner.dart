//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class AddressResAddressesInner {
  /// Returns a new [AddressResAddressesInner] instance.
  AddressResAddressesInner({
    this.zipCode,
    this.prefCode,
    this.prefName,
    this.prefKana,
    this.prefRoma,
    this.cityCode,
    this.cityName,
    this.cityKana,
    this.cityRoma,
    this.townName,
    this.townKana,
    this.townRoma,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zipCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefKana;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefRoma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityKana;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityRoma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townKana;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townRoma;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressResAddressesInner &&
          other.zipCode == zipCode &&
          other.prefCode == prefCode &&
          other.prefName == prefName &&
          other.prefKana == prefKana &&
          other.prefRoma == prefRoma &&
          other.cityCode == cityCode &&
          other.cityName == cityName &&
          other.cityKana == cityKana &&
          other.cityRoma == cityRoma &&
          other.townName == townName &&
          other.townKana == townKana &&
          other.townRoma == townRoma;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (zipCode == null ? 0 : zipCode!.hashCode) +
      (prefCode == null ? 0 : prefCode!.hashCode) +
      (prefName == null ? 0 : prefName!.hashCode) +
      (prefKana == null ? 0 : prefKana!.hashCode) +
      (prefRoma == null ? 0 : prefRoma!.hashCode) +
      (cityCode == null ? 0 : cityCode!.hashCode) +
      (cityName == null ? 0 : cityName!.hashCode) +
      (cityKana == null ? 0 : cityKana!.hashCode) +
      (cityRoma == null ? 0 : cityRoma!.hashCode) +
      (townName == null ? 0 : townName!.hashCode) +
      (townKana == null ? 0 : townKana!.hashCode) +
      (townRoma == null ? 0 : townRoma!.hashCode);

  @override
  String toString() =>
      'AddressResAddressesInner[zipCode=$zipCode, prefCode=$prefCode, prefName=$prefName, prefKana=$prefKana, prefRoma=$prefRoma, cityCode=$cityCode, cityName=$cityName, cityKana=$cityKana, cityRoma=$cityRoma, townName=$townName, townKana=$townKana, townRoma=$townRoma]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (zipCode != null) {
      json[r'zip_code'] = zipCode;
    } else {
      json[r'zip_code'] = null;
    }
    if (prefCode != null) {
      json[r'pref_code'] = prefCode;
    } else {
      json[r'pref_code'] = null;
    }
    if (prefName != null) {
      json[r'pref_name'] = prefName;
    } else {
      json[r'pref_name'] = null;
    }
    if (prefKana != null) {
      json[r'pref_kana'] = prefKana;
    } else {
      json[r'pref_kana'] = null;
    }
    if (prefRoma != null) {
      json[r'pref_roma'] = prefRoma;
    } else {
      json[r'pref_roma'] = null;
    }
    if (cityCode != null) {
      json[r'city_code'] = cityCode;
    } else {
      json[r'city_code'] = null;
    }
    if (cityName != null) {
      json[r'city_name'] = cityName;
    } else {
      json[r'city_name'] = null;
    }
    if (cityKana != null) {
      json[r'city_kana'] = cityKana;
    } else {
      json[r'city_kana'] = null;
    }
    if (cityRoma != null) {
      json[r'city_roma'] = cityRoma;
    } else {
      json[r'city_roma'] = null;
    }
    if (townName != null) {
      json[r'town_name'] = townName;
    } else {
      json[r'town_name'] = null;
    }
    if (townKana != null) {
      json[r'town_kana'] = townKana;
    } else {
      json[r'town_kana'] = null;
    }
    if (townRoma != null) {
      json[r'town_roma'] = townRoma;
    } else {
      json[r'town_roma'] = null;
    }
    return json;
  }

  /// Returns a new [AddressResAddressesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressResAddressesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(
            json.containsKey(key),
            'Required key "AddressResAddressesInner[$key]" is missing from JSON.',
          );
          assert(
            json[key] != null,
            'Required key "AddressResAddressesInner[$key]" has a null value in JSON.',
          );
        }
        return true;
      }());

      return AddressResAddressesInner(
        zipCode: mapValueOfType<String>(json, r'zip_code'),
        prefCode: mapValueOfType<String>(json, r'pref_code'),
        prefName: mapValueOfType<String>(json, r'pref_name'),
        prefKana: mapValueOfType<String>(json, r'pref_kana'),
        prefRoma: mapValueOfType<String>(json, r'pref_roma'),
        cityCode: mapValueOfType<String>(json, r'city_code'),
        cityName: mapValueOfType<String>(json, r'city_name'),
        cityKana: mapValueOfType<String>(json, r'city_kana'),
        cityRoma: mapValueOfType<String>(json, r'city_roma'),
        townName: mapValueOfType<String>(json, r'town_name'),
        townKana: mapValueOfType<String>(json, r'town_kana'),
        townRoma: mapValueOfType<String>(json, r'town_roma'),
      );
    }
    return null;
  }

  static List<AddressResAddressesInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AddressResAddressesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddressResAddressesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddressResAddressesInner> mapFromJson(dynamic json) {
    final map = <String, AddressResAddressesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddressResAddressesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddressResAddressesInner-objects as value to a dart map
  static Map<String, List<AddressResAddressesInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AddressResAddressesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddressResAddressesInner.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
