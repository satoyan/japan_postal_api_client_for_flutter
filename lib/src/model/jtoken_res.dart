//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JtokenRes {
  /// Returns a new [JtokenRes] instance.
  JtokenRes({
    required this.token,
    required this.tokenType,
    required this.expiresIn,
    required this.scope,
  });

  /// アクセストークン
  String token;

  /// トークンタイプ
  String tokenType;

  /// 有効秒数
  int expiresIn;

  /// スコープ
  String scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JtokenRes &&
    other.token == token &&
    other.tokenType == tokenType &&
    other.expiresIn == expiresIn &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (tokenType.hashCode) +
    (expiresIn.hashCode) +
    (scope.hashCode);

  @override
  String toString() => 'JtokenRes[token=$token, tokenType=$tokenType, expiresIn=$expiresIn, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'token_type'] = this.tokenType;
      json[r'expires_in'] = this.expiresIn;
      json[r'scope'] = this.scope;
    return json;
  }

  /// Returns a new [JtokenRes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JtokenRes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JtokenRes[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JtokenRes[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JtokenRes(
        token: mapValueOfType<String>(json, r'token')!,
        tokenType: mapValueOfType<String>(json, r'token_type')!,
        expiresIn: mapValueOfType<int>(json, r'expires_in')!,
        scope: mapValueOfType<String>(json, r'scope')!,
      );
    }
    return null;
  }

  static List<JtokenRes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JtokenRes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JtokenRes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JtokenRes> mapFromJson(dynamic json) {
    final map = <String, JtokenRes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JtokenRes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JtokenRes-objects as value to a dart map
  static Map<String, List<JtokenRes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JtokenRes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JtokenRes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'token_type',
    'expires_in',
    'scope',
  };
}

