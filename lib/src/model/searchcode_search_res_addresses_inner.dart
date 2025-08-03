//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchcodeSearchResAddressesInner {
  /// Returns a new [SearchcodeSearchResAddressesInner] instance.
  SearchcodeSearchResAddressesInner({
    this.dgacode,
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
    this.bizName,
    this.bizKana,
    this.bizRoma,
    this.blockName,
    this.otherName,
    this.address,
    this.longitude,
    this.latitude,
  });

  String? dgacode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? zipCode;

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

  String? prefKana;

  String? prefRoma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cityCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityName;

  String? cityKana;

  String? cityRoma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townName;

  String? townKana;

  String? townRoma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bizName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bizKana;

  String? bizRoma;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blockName;

  String? otherName;

  String? address;

  String? longitude;

  String? latitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchcodeSearchResAddressesInner &&
    other.dgacode == dgacode &&
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
    other.townRoma == townRoma &&
    other.bizName == bizName &&
    other.bizKana == bizKana &&
    other.bizRoma == bizRoma &&
    other.blockName == blockName &&
    other.otherName == otherName &&
    other.address == address &&
    other.longitude == longitude &&
    other.latitude == latitude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dgacode == null ? 0 : dgacode!.hashCode) +
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
    (townRoma == null ? 0 : townRoma!.hashCode) +
    (bizName == null ? 0 : bizName!.hashCode) +
    (bizKana == null ? 0 : bizKana!.hashCode) +
    (bizRoma == null ? 0 : bizRoma!.hashCode) +
    (blockName == null ? 0 : blockName!.hashCode) +
    (otherName == null ? 0 : otherName!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode);

  @override
  String toString() => 'SearchcodeSearchResAddressesInner[dgacode=$dgacode, zipCode=$zipCode, prefCode=$prefCode, prefName=$prefName, prefKana=$prefKana, prefRoma=$prefRoma, cityCode=$cityCode, cityName=$cityName, cityKana=$cityKana, cityRoma=$cityRoma, townName=$townName, townKana=$townKana, townRoma=$townRoma, bizName=$bizName, bizKana=$bizKana, bizRoma=$bizRoma, blockName=$blockName, otherName=$otherName, address=$address, longitude=$longitude, latitude=$latitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dgacode != null) {
      json[r'dgacode'] = this.dgacode;
    } else {
      json[r'dgacode'] = null;
    }
    if (this.zipCode != null) {
      json[r'zip_code'] = this.zipCode;
    } else {
      json[r'zip_code'] = null;
    }
    if (this.prefCode != null) {
      json[r'pref_code'] = this.prefCode;
    } else {
      json[r'pref_code'] = null;
    }
    if (this.prefName != null) {
      json[r'pref_name'] = this.prefName;
    } else {
      json[r'pref_name'] = null;
    }
    if (this.prefKana != null) {
      json[r'pref_kana'] = this.prefKana;
    } else {
      json[r'pref_kana'] = null;
    }
    if (this.prefRoma != null) {
      json[r'pref_roma'] = this.prefRoma;
    } else {
      json[r'pref_roma'] = null;
    }
    if (this.cityCode != null) {
      json[r'city_code'] = this.cityCode;
    } else {
      json[r'city_code'] = null;
    }
    if (this.cityName != null) {
      json[r'city_name'] = this.cityName;
    } else {
      json[r'city_name'] = null;
    }
    if (this.cityKana != null) {
      json[r'city_kana'] = this.cityKana;
    } else {
      json[r'city_kana'] = null;
    }
    if (this.cityRoma != null) {
      json[r'city_roma'] = this.cityRoma;
    } else {
      json[r'city_roma'] = null;
    }
    if (this.townName != null) {
      json[r'town_name'] = this.townName;
    } else {
      json[r'town_name'] = null;
    }
    if (this.townKana != null) {
      json[r'town_kana'] = this.townKana;
    } else {
      json[r'town_kana'] = null;
    }
    if (this.townRoma != null) {
      json[r'town_roma'] = this.townRoma;
    } else {
      json[r'town_roma'] = null;
    }
    if (this.bizName != null) {
      json[r'biz_name'] = this.bizName;
    } else {
      json[r'biz_name'] = null;
    }
    if (this.bizKana != null) {
      json[r'biz_kana'] = this.bizKana;
    } else {
      json[r'biz_kana'] = null;
    }
    if (this.bizRoma != null) {
      json[r'biz_roma'] = this.bizRoma;
    } else {
      json[r'biz_roma'] = null;
    }
    if (this.blockName != null) {
      json[r'block_name'] = this.blockName;
    } else {
      json[r'block_name'] = null;
    }
    if (this.otherName != null) {
      json[r'other_name'] = this.otherName;
    } else {
      json[r'other_name'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    return json;
  }

  /// Returns a new [SearchcodeSearchResAddressesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchcodeSearchResAddressesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchcodeSearchResAddressesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchcodeSearchResAddressesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchcodeSearchResAddressesInner(
        dgacode: mapValueOfType<String>(json, r'dgacode'),
        zipCode: mapValueOfType<int>(json, r'zip_code'),
        prefCode: mapValueOfType<String>(json, r'pref_code'),
        prefName: mapValueOfType<String>(json, r'pref_name'),
        prefKana: mapValueOfType<String>(json, r'pref_kana'),
        prefRoma: mapValueOfType<String>(json, r'pref_roma'),
        cityCode: mapValueOfType<int>(json, r'city_code'),
        cityName: mapValueOfType<String>(json, r'city_name'),
        cityKana: mapValueOfType<String>(json, r'city_kana'),
        cityRoma: mapValueOfType<String>(json, r'city_roma'),
        townName: mapValueOfType<String>(json, r'town_name'),
        townKana: mapValueOfType<String>(json, r'town_kana'),
        townRoma: mapValueOfType<String>(json, r'town_roma'),
        bizName: mapValueOfType<String>(json, r'biz_name'),
        bizKana: mapValueOfType<String>(json, r'biz_kana'),
        bizRoma: mapValueOfType<String>(json, r'biz_roma'),
        blockName: mapValueOfType<String>(json, r'block_name'),
        otherName: mapValueOfType<String>(json, r'other_name'),
        address: mapValueOfType<String>(json, r'address'),
        longitude: mapValueOfType<String>(json, r'longitude'),
        latitude: mapValueOfType<String>(json, r'latitude'),
      );
    }
    return null;
  }

  static List<SearchcodeSearchResAddressesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchcodeSearchResAddressesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchcodeSearchResAddressesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchcodeSearchResAddressesInner> mapFromJson(dynamic json) {
    final map = <String, SearchcodeSearchResAddressesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchcodeSearchResAddressesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchcodeSearchResAddressesInner-objects as value to a dart map
  static Map<String, List<SearchcodeSearchResAddressesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchcodeSearchResAddressesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchcodeSearchResAddressesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

