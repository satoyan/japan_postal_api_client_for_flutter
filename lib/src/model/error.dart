//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class Error {
  /// Returns a new [Error] instance.
  Error({
    required this.requestId,
    required this.errorCode,
    required this.message,
  });

  /// 問合せID (追跡コード)
  String requestId;

  /// エラーコード
  String errorCode;

  /// エラーメッセージ
  String message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Error &&
          other.requestId == requestId &&
          other.errorCode == errorCode &&
          other.message == message;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (requestId.hashCode) + (errorCode.hashCode) + (message.hashCode);

  @override
  String toString() =>
      'Error[requestId=$requestId, errorCode=$errorCode, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'request_id'] = requestId;
    json[r'error_code'] = errorCode;
    json[r'message'] = message;
    return json;
  }

  /// Returns a new [Error] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Error? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        for (var key in requiredKeys) {
          assert(
            json.containsKey(key),
            'Required key "Error[$key]" is missing from JSON.',
          );
          assert(
            json[key] != null,
            'Required key "Error[$key]" has a null value in JSON.',
          );
        }
        return true;
      }());

      return Error(
        requestId: mapValueOfType<String>(json, r'request_id')!,
        errorCode: mapValueOfType<String>(json, r'error_code')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<Error> listFromJson(dynamic json, {bool growable = false}) {
    final result = <Error>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Error.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Error> mapFromJson(dynamic json) {
    final map = <String, Error>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Error.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Error-objects as value to a dart map
  static Map<String, List<Error>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Error>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Error.listFromJson(entry.value, growable: growable);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{'request_id', 'error_code', 'message'};
}
