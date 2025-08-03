//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BadRequest {
  /// Returns a new [BadRequest] instance.
  BadRequest({
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
  bool operator ==(Object other) => identical(this, other) || other is BadRequest &&
    other.requestId == requestId &&
    other.errorCode == errorCode &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requestId.hashCode) +
    (errorCode.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'BadRequest[requestId=$requestId, errorCode=$errorCode, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'request_id'] = this.requestId;
      json[r'error_code'] = this.errorCode;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [BadRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BadRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BadRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BadRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BadRequest(
        requestId: mapValueOfType<String>(json, r'request_id')!,
        errorCode: mapValueOfType<String>(json, r'error_code')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<BadRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BadRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BadRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BadRequest> mapFromJson(dynamic json) {
    final map = <String, BadRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BadRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BadRequest-objects as value to a dart map
  static Map<String, List<BadRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BadRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BadRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'request_id',
    'error_code',
    'message',
  };
}

