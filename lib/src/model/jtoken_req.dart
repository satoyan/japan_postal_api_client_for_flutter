//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class JtokenReq {
  /// Returns a new [JtokenReq] instance.
  JtokenReq({
    required this.grantType,
    required this.clientId,
    required this.secretKey,
  });

  /// grant_type (「client_credentials」で固定)
  String grantType;

  /// クライアントID
  String clientId;

  /// シークレットキー
  String secretKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JtokenReq &&
          other.grantType == grantType &&
          other.clientId == clientId &&
          other.secretKey == secretKey;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (grantType.hashCode) + (clientId.hashCode) + (secretKey.hashCode);

  @override
  String toString() =>
      'JtokenReq[grantType=$grantType, clientId=$clientId, secretKey=$secretKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'grant_type'] = grantType;
    json[r'client_id'] = clientId;
    json[r'secret_key'] = secretKey;
    return json;
  }

  /// Returns a new [JtokenReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JtokenReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(
            json.containsKey(key),
            'Required key "JtokenReq[$key]" is missing from JSON.',
          );
          assert(
            json[key] != null,
            'Required key "JtokenReq[$key]" has a null value in JSON.',
          );
        }
        return true;
      }());

      return JtokenReq(
        grantType: mapValueOfType<String>(json, r'grant_type')!,
        clientId: mapValueOfType<String>(json, r'client_id')!,
        secretKey: mapValueOfType<String>(json, r'secret_key')!,
      );
    }
    return null;
  }

  static List<JtokenReq> listFromJson(dynamic json, {bool growable = false}) {
    final result = <JtokenReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JtokenReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JtokenReq> mapFromJson(dynamic json) {
    final map = <String, JtokenReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JtokenReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JtokenReq-objects as value to a dart map
  static Map<String, List<JtokenReq>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<JtokenReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JtokenReq.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'grant_type', 'client_id', 'secret_key'};
}
