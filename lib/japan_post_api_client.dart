// @dart=3.8

library;

export 'src/japan_post_api_client.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';

part './src/api_client.dart';
part './src/api_helper.dart';
part './src/api_exception.dart';
part './src/auth/authentication.dart';
part './src/auth/api_key_auth.dart';
part './src/auth/oauth.dart';
part './src/auth/http_basic_auth.dart';
part './src/auth/http_bearer_auth.dart';

part './src/api/addresszip_api.dart';
part './src/api/searchcode_api.dart';
part './src/api/token_api.dart';

part './src/model/address_req.dart';
part './src/model/address_res.dart';
part './src/model/address_res_addresses_inner.dart';
part './src/model/bad_request.dart';
part './src/model/error.dart';
part './src/model/forbidden.dart';
part './src/model/jtoken_req.dart';
part './src/model/jtoken_res.dart';
part './src/model/not_found.dart';
part './src/model/searchcode_search_res.dart';
part './src/model/searchcode_search_res_addresses_inner.dart';
part './src/model/unauthorized.dart';
part './src/api_result.dart';
part './src/api_client_factory.dart';

/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
final defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
// final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) =>
    pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
