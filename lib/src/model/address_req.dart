//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class AddressReq {
  /// Returns a new [AddressReq] instance.
  AddressReq({
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
    this.freeword,
    this.flgGetcity,
    this.flgGetpref,
    this.page,
    this.limit,
  });

  /// 都道府県コード
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefCode;

  /// 都道府県名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefName;

  /// 都道府県名カナ
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefKana;

  /// 都道府県名ローマ字
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefRoma;

  /// 市区町村コード
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityCode;

  /// 市区町村名
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityName;

  /// 市区町村名カナ
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityKana;

  /// 市区町村名ローマ字
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cityRoma;

  /// 町域
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townName;

  /// 町域カナ
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townKana;

  /// 町域ローマ字
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? townRoma;

  /// フリーワード
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? freeword;

  /// 市区町村一覧のみ取得フラグ (デフォルト値:0、 0:すべての情報を取得、1:市区町村のみの情報を取得)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? flgGetcity;

  /// 都道府県一覧のみ取得フラグ (デフォルト値:0、0:すべての情報を取得、1:都道府県のみの情報を取得)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? flgGetpref;

  /// ページ数 (デフォルト値:1)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  /// 取得最大レコード数 (デフォルト値:1000、最大値:1000)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressReq &&
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
          other.freeword == freeword &&
          other.flgGetcity == flgGetcity &&
          other.flgGetpref == flgGetpref &&
          other.page == page &&
          other.limit == limit;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
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
      (freeword == null ? 0 : freeword!.hashCode) +
      (flgGetcity == null ? 0 : flgGetcity!.hashCode) +
      (flgGetpref == null ? 0 : flgGetpref!.hashCode) +
      (page == null ? 0 : page!.hashCode) +
      (limit == null ? 0 : limit!.hashCode);

  @override
  String toString() =>
      'AddressReq[prefCode=$prefCode, prefName=$prefName, prefKana=$prefKana, prefRoma=$prefRoma, cityCode=$cityCode, cityName=$cityName, cityKana=$cityKana, cityRoma=$cityRoma, townName=$townName, townKana=$townKana, townRoma=$townRoma, freeword=$freeword, flgGetcity=$flgGetcity, flgGetpref=$flgGetpref, page=$page, limit=$limit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (freeword != null) {
      json[r'freeword'] = freeword;
    } else {
      json[r'freeword'] = null;
    }
    if (flgGetcity != null) {
      json[r'flg_getcity'] = flgGetcity;
    } else {
      json[r'flg_getcity'] = null;
    }
    if (flgGetpref != null) {
      json[r'flg_getpref'] = flgGetpref;
    } else {
      json[r'flg_getpref'] = null;
    }
    if (page != null) {
      json[r'page'] = page;
    } else {
      json[r'page'] = null;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    } else {
      json[r'limit'] = null;
    }
    return json;
  }

  /// Returns a new [AddressReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddressReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(
            json.containsKey(key),
            'Required key "AddressReq[$key]" is missing from JSON.',
          );
          assert(
            json[key] != null,
            'Required key "AddressReq[$key]" has a null value in JSON.',
          );
        }
        return true;
      }());

      return AddressReq(
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
        freeword: mapValueOfType<String>(json, r'freeword'),
        flgGetcity: num.parse('${json[r'flg_getcity']}'),
        flgGetpref: num.parse('${json[r'flg_getpref']}'),
        page: mapValueOfType<int>(json, r'page'),
        limit: mapValueOfType<int>(json, r'limit'),
      );
    }
    return null;
  }

  static List<AddressReq> listFromJson(dynamic json, {bool growable = false}) {
    final result = <AddressReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddressReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddressReq> mapFromJson(dynamic json) {
    final map = <String, AddressReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddressReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddressReq-objects as value to a dart map
  static Map<String, List<AddressReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AddressReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddressReq.listFromJson(
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
